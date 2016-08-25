#include "SkipList.hpp"

using get_time = std::chrono::steady_clock ;

SkipNode::SkipNode(){
  height = MAX_LEVEL;
  key = 0;
  value = std::make_pair(0,0);
  for(int i = 0; i < MAX_LEVEL; ++i){
    forward[i] = NULL;
  }
}

SkipNode::SkipNode(int h, float k, std::pair<ushort,ushort> v)
  :height(h), key(k), value(v){
  for(int i = 0; i < MAX_LEVEL; ++i){
    forward[i] = NULL;
  }
}

SkipNode::~SkipNode(){
}

/*
  limit: number of levels to traverse 
  prevents infinite loops 
  suggested maximum value: 16
*/
void SkipNode::debug(int limit){
  if(limit > 0){
    std::cout << "(Node) key: " << key 
	      << " value: (" << value.first << ", " 
	      << value.second << ") " << std::endl;
    std::cout << "next_ptrs " << std::endl;
    for(int i = 0; i < MAX_LEVEL; ++i){
      if(forward[i] == NULL){
	//std::cout << i << ": Null" << std::endl;
      }else{
	std::cout << i << ": " 
		  << "key: " << forward[i]->key
		  << " value: (" << forward[i]->value.first << ", " 
		  << forward[i]->value.second << ") " << std::endl;
      }
    }
    for(int i = 0; i < MAX_LEVEL; ++i){
      if(forward[i] != NULL){
	forward[i]->debug(limit-1);
      }
    }
  }
}
/*
  SkipList::SkipList()
  :_isMaxHeap(false), length(0), level(0), delta(0.0 + EPSILON),
  left_exclude(std::unordered_set<ushort>), right_exclude(std::unordered_set<ushort>){
  //this->head created automatically, no initialization needed
  rng.seed(std::random_device()());
  this->debug();
  }

  SkipList::SkipList(float delta)
  :_isMaxHeap(false), length(0), level(0), delta(delta + EPSILON),
  left_exclude(std::unordered_set<ushort>), right_exclude(std::unordered_set<ushort>){
  rng.seed(std::random_device()());
  this->debug();
  }

  SkipList::SkipList(float delta, bool setMaxHeap)
  :_isMaxHeap(setMaxHeap), length(0), level(0), delta(delta + EPSILON),
  left_exclude(std::unordered_set<ushort>), right_exclude(std::unordered_set<ushort>){
  rng.seed(std::random_device()());
  this->debug();
  insert_time -= insert_time;
  }
*/
SkipList::SkipList(float delta, bool setMaxHeap, std::unordered_set<ushort> & lex, std::unordered_set<ushort> & rex)
  :_isMaxHeap(setMaxHeap), length(0), level(0), delta(delta + EPSILON),
   left_exclude(lex), right_exclude(rex){
  //srand(std::random_device()());
  rng.seed(std::random_device()());
  this->debug();
  miss_counter = 0;
  insert_time -= insert_time;
  cleanup_time -= cleanup_time;
  for(int i = 0; i < 1000; ++i){
    std::uniform_int_distribution<int> rnd(0,i);
    uni.push_back(rnd);
  }
}

SkipList::~SkipList(){
  SkipNode * prev = NULL;
  SkipNode * curr = this->head.forward[0];
  while(curr){
    prev = curr;
    curr = curr->forward[0];
    delete prev;
  }
}

int SkipList::random_height(void){
  int level = 1;
  std::uniform_real_distribution<float> uni(0, 1.0);
  while (uni(rng) < SkipList::SKIPLIST_P && level < SkipNode::MAX_LEVEL)
    level += 1;
  return (level<SkipNode::MAX_LEVEL) ? level : SkipNode::MAX_LEVEL;
}

void SkipList::insert(float similarity, std::pair<ushort,ushort> entry){
  auto start = std::chrono::steady_clock::now();
  similarity = _isMaxHeap ? (1 - similarity) : similarity;
	
  SkipNode * curr;
  SkipNode * update[SkipNode::MAX_LEVEL];
  for(int i = 0; i < SkipNode::MAX_LEVEL; ++i){
    update[i] = NULL;
  }

  curr = &(this->head);
  for(int i = this->level - 1; i >= 0; --i){
    while(curr->forward[i] && (curr->forward[i]->key < similarity)){
      curr = curr->forward[i];
    }
    update[i] = curr;
  }

  int height = random_height();
  if(height > this->level){
    for(int i = this->level; i < height; ++i){
      update[i] = &this->head;
    }
    this->level = height;
  }
  
  SkipNode * node = new SkipNode(height, similarity, entry);
  //insert new node into the SkipList
  for(int i = 0; i < height; ++i){
    node->forward[i] = update[i]->forward[i];
    update[i]->forward[i] = node;
  }
  this->length += 1;
  this->debug();
  auto end = std::chrono::steady_clock::now();
  insert_time += std::chrono::duration_cast<std::chrono::milliseconds>(end - start);
}
	
bool SkipList::empty(){
  if(this->length < 0){
    std::cerr << "Error:fewer than 0 items in list!" << std::endl;
    //could throw an exception if needed
  }
  return this->length <= 0;
}

/*
 * super slow O(n*h) method
 * check every node for a pointer to this skipnode
 * if so, move it to the next node
 */
void SkipList::removeNode(SkipNode * n){
  if(!n){
    std::cout << "tried removing null" << std::endl;
    return;
  }
  //std::cout << "remove node " << this->length << std::endl;
  bool found = false;
  SkipNode * curr = &(this->head);
  
  SkipNode * start = curr;
  for(int i = this->level - 1; i >= 0; --i){
    curr = start;
    while(curr && (curr->key <= n->key)){
      if(curr->forward[i] == n){
	found = true;
	curr->forward[i] = n->forward[i];
	start = curr;
      }else{
	curr = curr->forward[i];
      }
    }
  }
  
  /*
    while(curr && (curr->key <= n->key)){
    for(int i = curr->height; i >= 0; --i){
    if(curr->forward[i] == n){
    curr->forward[i] = n->forward[i];
    }
    }
    curr = curr->forward[0];
    }
  */
  if(found){
    delete n;
    this->length -= 1;
  }
}

uint SkipList::random_int(uint n){
  //std::cout << "cache size " << uni.size() << std::endl;
  if(n < uni.size()){
    //std::cout << n << "in cache" << std::endl;
    return uni[n-1](rng);
  }else{
    //std::cout << n << " not in cache" << std::endl;
    std::uniform_int_distribution<int> rnd(0,n);
    uni.push_back(rnd);
    return rnd(rng);
  }
}

/*
 * this function cannot be called recursively due to stack overflow 
 * for seeds > 2300
 */
std::pair<ushort,ushort> SkipList::pop_uniform(){
  std::pair<ushort,ushort> result;
  do{
    if(this->empty()){
      throw QueueEmptyException();
    }
    //std::cout << "pop uniform" << std::endl;
    SkipNode * choice = this->head.forward[0];
    SkipNode * curr = choice;
    float tail = curr->key + this->delta;
    
    uint n = 0;
    while(curr->forward[0] && curr->forward[0]->key <= tail){
      curr = curr->forward[0];
      //std::uniform_int_distribution<int> uni(0,++n); 
      //if(uni(rng) == 0){
      if(random_int(++n) == 0){
	choice = curr;
      }
    }
    
    result = choice->value;
    removeNode(choice);
    ++miss_counter; //count misses in a row
    if(miss_counter > SkipList::CLEANUP_THRESH){
      this->cleanup();
    }
  }while(left_exclude.find(result.first) != left_exclude.end() ||
	 right_exclude.find(result.second) != right_exclude.end());
  /*
    if(left_exclude.find(result.first) != left_exclude.end() ||
    right_exclude.find(result.second) != right_exclude.end()){
    ++miss_counter;
    
    return this->pop_uniform();
    }
  */
  miss_counter = 0; //reset after a hit
  this->debug();
  return result;
}

std::pair<ushort,ushort> SkipList::pop_distr(){
  if(this->empty()){
    throw QueueEmptyException();
  }
  std::pair<ushort,ushort> result;
  if(this->length == 1){
    result = this->head.forward[0]->value;
    removeNode(this->head.forward[0]);
    return result;
  }
	
  SkipNode * curr = &(this->head);
  float start = this->head.forward[0]->key;
  std::uniform_real_distribution<float> uni(start,start+this->delta);
  float pick_value = uni(rng);
  for(int i = this->level - 1; i >= 0; --i){
    while(curr->forward[i] && (curr->forward[i]->key <= pick_value)){
      curr = curr->forward[i];
      if(curr->key == pick_value){
	result = curr->value;
	removeNode(curr);
	return result;
      }
    }
  }
  result = curr->value;
  removeNode(curr);
  return result;
}
bool SkipList::isMaxHeap(){
  return _isMaxHeap;
}

void SkipList::cleanup(){
  miss_counter = 0;
  auto start = std::chrono::steady_clock::now();
  std::cout << "old size=" << this->length << std::endl;
  //SkipNode * prev = &(this->head);
  SkipNode * curr = this->head.forward[0];
  
  SkipNode * update[SkipNode::MAX_LEVEL];
  SkipNode * forward[SkipNode::MAX_LEVEL];
  for(int i = 0; i < SkipNode::MAX_LEVEL; ++i){
    update[i] = &(this->head);
    forward[i] = NULL;
  }
  while(curr){
    //if curr is alive, point to next living node
    if(left_exclude.find(curr->value.first) == left_exclude.end() &&
       right_exclude.find(curr->value.second) == right_exclude.end()){
      for(int i = 0; i < curr->height; ++i){
	update[i]->forward[i] = curr;
	update[i] = curr;
	forward[i] = curr->forward[i];
      }
      curr = curr->forward[0];
    }else{ //if curr is dead, delete this node
      this->length--;
      for(int i = 0; i < curr->height; ++i){
	forward[i] = curr->forward[i];
      }
      //prev = curr;
      delete curr;
      curr = forward[0];

    }
  }

  for(int i = 0; i < SkipNode::MAX_LEVEL; ++i){
    if(update[i]){
      update[i]->forward[i] = forward[i];
    }
  }
  /*
  for(int i = 0; i < this->head.height; ++i){
    this->head.forward[i] = NULL;
  }
  this->length = 0;
  while(curr){
    if(left_exclude.find(curr->value.first) == left_exclude.end() &&
       right_exclude.find(curr->value.second) == right_exclude.end()){
      this->insert(curr->key, curr->value);
    }
    prev = curr;
    curr = curr->forward[0];
    delete prev;
  }
  */

  /*
    std::vector<SkipNode *> live(this->length);
    SkipNode * update[SkipNode::MAX_LEVEL];
    for(int i = 0; i < SkipNode::MAX_LEVEL; ++i){
    update[i] = NULL;
    }
  
    this->length = 0;
    while(curr){
    if(left_exclude.find(curr->value.first) == left_exclude.end() &&
    right_exclude.find(curr->value.second) == right_exclude.end()){
    live.push_back(curr);
    }else{
    prev = curr;
    curr = curr->forward[0];
    delete prev;
    }
    }

    this->length = live.size();
    for(auto it = live.rbegin(); it != live.rend(); ++it){
    for(int i = 0; i < SkipNode::MAX_LEVEL; ++i){
    (*it)->forward[i] = update[i];
    }
    for(int i = 0; i < (*it)->height; ++i){
    update[i] = (*it);
    }
    }
  */

  std::cout << "new size=" << this->length << std::endl;
  auto stop = std::chrono::steady_clock::now();
  auto diff = stop - start;
  cleanup_time += std::chrono::duration_cast<std::chrono::milliseconds>(diff);
  std::cout << "cleanup time = (" << std::chrono::duration_cast<std::chrono::milliseconds>(diff).count()<< "ms)" << std::endl;
}
/*
 * Don't save the head or there will be two after reload
 */
void SkipList::serialize(std::string fname){
  std::cout << "start serialize " << this->length << std::endl;
  auto start = get_time::now();
  std::ofstream out(fname, std::ofstream::out);
  std::vector<SkipNode *> nodes;
  nodes.reserve(this->length);
  SkipNode * curr = this->head.forward[0];
  while(curr){
    nodes.push_back(curr);
    curr = curr->forward[0];
  }
  for(auto rit = nodes.rbegin(); rit != nodes.rend(); ++rit){
    //std::cout << (*rit)->key << " " << (*rit)->value.first << " " << (*rit)->value.second << " " << (*rit)->height << std::endl;
    out << (*rit)->key << " " << (*rit)->value.first << " " << (*rit)->value.second << " " << (*rit)->height << std::endl;
  }
  //serialize_helper(this->head.forward[0], out);
  auto stop = get_time::now();
  auto diff = stop - start;
  cleanup_time += std::chrono::duration_cast<std::chrono::milliseconds>(diff);
  std::cout << "time to save = (" << std::chrono::duration_cast<std::chrono::milliseconds>(diff).count()<< "ms)" << std::endl;
  out.close();
}

void SkipList::serialize_helper(SkipNode * curr, std::ofstream & out){
  std::cout << "helper" << std::endl;
  if(curr != NULL){
    std::cout << "on node" << curr->key << " " << curr->value.first << " " << curr->value.second << " " << curr->height << std::endl;
    serialize_helper(curr->forward[0], out);
    std::cout << "writing value" << std::endl;
    std::cout << curr->key << " " << curr->value.first << " " << curr->value.second << " " << curr->height << std::endl;
    out << curr->key << " " << curr->value.first << " " << curr->value.second << " " << curr->height << std::endl;
  }
}

bool SkipList::deserialize(std::string fname){
  std::cout << "deserialize " << fname << std::endl;
  SkipNode * update[SkipNode::MAX_LEVEL];
  for(int i = 0; i < SkipNode::MAX_LEVEL; ++i){
    update[i] = NULL;
  }

  std::ifstream file(fname, std::ifstream::in);
  if(!file.is_open() || !file.good()){
    std::cerr << "no file found" << std::endl;
    return false;
  }

  ushort height = 1, n1 = 0, n2 = 0;
  float sim = 1;
  while(file >> sim >> n1 >> n2 >> height){
    std::cout << "node" << sim << "\t" << n1 << " " << n2 << " " << height << std::endl; 
    //SkipNode * curr = new SkipNode(height, sim, n1, n2, update);
    SkipNode * curr = new SkipNode(height, sim, std::make_pair(n1, n2));
    for(int i = 0; i < height; ++i){
      curr->forward[i] = update[i];
      update[i] = curr;
    }
    this->length++;
  }
  for(int i = 0; i < this->head.height; ++i){
    this->head.forward[i] = update[i];
  }
  return true;
}

void SkipList::test(){
	
  //SkipList list(0.10,true);
  /*
    std::cout << "list initialized. empty() = " << list.empty() << std::endl;
    std::cout << "inserting a value" << list.empty() << std::endl;
    list.insert(0.99, std::make_pair(1, 1001));
    std::cout << "list should be non empty " << !list.empty() << std::endl;
    //std::cout << "list contents " << std::endl;
    //list.head.debug(16);
    std::cout << "testing pop_uniform()" << std::endl;
    std::pair<ushort,ushort> result1 = list.pop_uniform();
    std::cout << "result is (" << result1.first << ", " << result1.second << ")" << std::endl;
	
    std::cout << "List should be empty " << list.empty() << std::endl;
  */
  /*
  //deterministic test
  list.insert(0.99, std::make_pair(1, 1001));
  list.insert(0.98, std::make_pair(2, 1001));
  list.insert(0.97, std::make_pair(3, 1001));
  list.insert(0.96, std::make_pair(4, 1001));
  list.insert(0.95, std::make_pair(5, 1001));
  list.insert(0.94, std::make_pair(6, 1001));
  list.insert(0.93, std::make_pair(7, 1001));
  */
  /*
  //deterministic reverse test
  list.insert(0.93, std::make_pair(1, 1001));
  list.insert(0.94, std::make_pair(2, 1001));
  list.insert(0.95, std::make_pair(3, 1001));
  list.insert(0.96, std::make_pair(4, 1001));
  list.insert(0.97, std::make_pair(5, 1001));
  list.insert(0.98, std::make_pair(6, 1001));
  list.insert(0.99, std::make_pair(7, 1001));
  */
	
  /*
  //non-deterministic test
  list.insert(0.90, std::make_pair(1, 1001));
  list.insert(0.90, std::make_pair(2, 1001));
  list.insert(0.90, std::make_pair(3, 1001));
  list.insert(0.90, std::make_pair(4, 1001));
  list.insert(0.90, std::make_pair(5, 1001));
  list.insert(0.90, std::make_pair(6, 1001));
  list.insert(0.90, std::make_pair(7, 1001));
  list.insert(0.90, std::make_pair(8, 1001));
  list.insert(0.90, std::make_pair(9, 1001));
	
  list.insert(0.80, std::make_pair(11, 1001));
  list.insert(0.80, std::make_pair(12, 1001));
  list.insert(0.80, std::make_pair(13, 1001));
  list.insert(0.80, std::make_pair(14, 1001));
  list.insert(0.80, std::make_pair(15, 1001));
  list.insert(0.80, std::make_pair(16, 1001));
  */
	
  //non-deterministic test reverse order
  /*
    list.insert(0.80, std::make_pair(11, 1001));
    list.insert(0.80, std::make_pair(12, 1001));
    list.insert(0.80, std::make_pair(13, 1001));
    list.insert(0.80, std::make_pair(14, 1001));
    list.insert(0.80, std::make_pair(15, 1001));
    list.insert(0.80, std::make_pair(16, 1001));
	
    list.insert(0.70, std::make_pair(101, 1001));
    list.insert(0.70, std::make_pair(102, 1001));
    list.insert(0.70, std::make_pair(103, 1001));
    list.insert(0.70, std::make_pair(104, 1001));
    list.insert(0.70, std::make_pair(105, 1001));
    list.insert(0.70, std::make_pair(106, 1001));
  */
  /*
    list.insert(0.90, std::make_pair(1, 1001));
    list.insert(0.90, std::make_pair(2, 1001));
    list.insert(0.90, std::make_pair(3, 1001));
    list.insert(0.90, std::make_pair(4, 1001));
    list.insert(0.90, std::make_pair(5, 1001));
    list.insert(0.90, std::make_pair(6, 1001));
    list.insert(0.90, std::make_pair(7, 1001));
    list.insert(0.90, std::make_pair(8, 1001));
  */
  //list.insert(0.90, std::make_pair(9, 1001));
	
  /*
    std::cout << "testing pop_uniform()" << std::endl;
    while(!list.empty()){
    //list.debug();
    std::pair<ushort,ushort> result1 = list.pop_uniform();
    std::cout << "(" << result1.first << ", " << result1.second << ")" << std::endl;
    }
    std::cout << "List should be empty " << list.empty() << std::endl;
  */	
  /*
    std::cout << "next pop should fail: " << std::endl;
    list.pop_uniform();
  */
	
}

void SkipList::debug(){
  //std::cout << "length " << this->length << std::endl;
  /*
    std::cout << "head " << std::endl;
    head.debug(16);
  */
}
/*
  int main(int argc, char **argv){
  std::cout << "running skiplist test" << std::endl;
  SkipList::test();
  std::cout << "skiplist test completed" << std::endl;
  }
*/

void SkipList::perf(){
  std::cout << "insert time (" << this->insert_time.count() << "ms)" << std::endl;
  std::cout << "cleanup time (" << this->cleanup_time.count() << "ms)" << std::endl;
}

void SkipList::showCounter(){
  std::cout << "counter=" << this->miss_counter << std::endl;
  this->miss_counter = 0;
}
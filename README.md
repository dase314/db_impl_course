# 数据库系统实现 db_impl_course

数据库系统实现是华东师范大学数据学院开设的一门本科生选修课。

课程主要内容是当下数据库内核实现中的关键技术，主要包括存储，查询，事务，高可用四个方面。


课程内容：

| Time | Content| |Time|Content| |
|------|-------|------|------|------|------|
|W1| 课程介绍|Reading: [课程简介、系统研究关注的内容、性能指标、课程要求](https://github.com/dase314/dase314.github.io/blob/main/files/W1-Intro.pptx) --Lab 1--:  |W10| 事务-异常与隔离级别 | Reading:Transaction Anomaly ，Serializablity， Recoverability， Isolation Levels|
|W2|存储-Bitcast结构|Reading: [KVS的接口与设计需求](https://github.com/dase314/dase314.github.io/blob/main/files/W2-KVS%E6%8E%A5%E5%8F%A3.pptx)， [Bitcast](https://github.com/dase314/dase314.github.io/blob/main/files/W2-Bitcast.pptx), [Log-structured store](http://blog.notdot.net/2009/12/Damn-Cool-Algorithms-Log-structured-storage) &  --Lab-2--: |W11|事务-并发控制（一） | Reading: 2PL，S2PL，Basic Timestamp|
|W3|存储-LSM-tree架构存储|Reading: [LSM-tree structure & LevelDB](https://github.com/dase314/dase314.github.io/blob/main/files/W2-LSM-tree.pptx) |W12| 事务-并发控制（二）|Reading:OCC， MVCC，Snapshot Isolation |
|W4|存储-传统数据库|Reading:[B+tree](https://www.geeksforgeeks.org/introduction-of-b-tree/?ref=lbp),  [COW-B+tree](http://www.bzero.se/ldapd/btree.html)，[Page Structure，Database Buffer](https://github.com/dase314/dase314.github.io/blob/main/files/W4-BufferPool.pptx), [Cache Policy (i](https://www.geeksforgeeks.org/page-replacement-algorithms-in-operating-systems/)[,ii)](http://www.mathcs.emory.edu/~cheung/Courses/355/Syllabus/9-virtual-mem/SC-replace.html) |W13| 事务-日志管理|Reading:[ARIES](https://github.com/dase314/dase314.github.io/blob/main/files/ARIES.pdf)|
|W5|存储-并发索引|Reading: Memory Consistency Model，Concurrent Linklist（Lock coupling，Optimistic Read,Lazy Delete）|W14|高可用-数据库备份，Raft（一） |Reading:[Raft Summary](https://dase314.github.io/blog/distributed_consensus/Raft%E4%BB%8B%E7%BB%8D.html)， [Raft Paper](https://web.stanford.edu/~ouster/cgi-bin/papers/raft-atc14) | 
|W6|存储-其他 |Reading：Memory Allocation，Implement LRU—Cache，Compression，Bloomfilter，Second Index， Design Considerations for Database storage |W15|高可用-Raft（二）|Reading: 见上 |
|W7|查询-执行引擎|Reading:数据库SQL执行过程，火山模型|W16|高可用-分布式一致性与Basic Paxos（一）|Reading: [Distributed consensus revised-Heidi Howard](https://github.com/dase314/dase314.github.io/blob/main/files/W16-BasicPaxos.pdf)|
|W8|查询-算子实现|Reading:Join Algorithms，Grace Join，External Sort|W17|高可用-分布式一致性与Basic Paxos(二）|Reading: 如上|
|W9|查询-查询优化器|Reading: Query Optimization |W18|分布式数据库主要技术扩展（MPP、分布式事务等）|Reading:|

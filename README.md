# 数据库系统实现 db_impl_course

数据库系统实现是华东师范大学数据学院开设的一门本科生选修课。

课程主要内容是当下数据库内核实现中的关键技术，主要包括存储，查询，事务，高可用四个方面。


课程内容：

| Time | Content| |Time|Content| |
|------|-------|------|------|------|------|
|W1| 课程介绍|Reading: [课程简介、系统研究关注的内容、性能指标、课程要求](https://github.com/dase314/dase314.github.io/blob/main/files/W1-Intro.pptx) --Lab 1--:  |W10| 查询-OLAP数据库的存储与执行引擎 | Reading:|
|W2|存储-数据库存储架构|Reading: [KVS的接口与设计需求](https://github.com/dase314/dase314.github.io/blob/main/files/W2-KVS%E6%8E%A5%E5%8F%A3.pptx)， [Bitcast](https://github.com/dase314/dase314.github.io/blob/main/files/W2-Bitcast.pptx), [Log-structured store](http://blog.notdot.net/2009/12/Damn-Cool-Algorithms-Log-structured-storage) &  --Lab-2--: |W11| 事务-异常与隔离级别|Reading:|
|W3|存储-LSM-tree架构存储|Reading: [LSM-tree structure & LevelDB](https://github.com/dase314/dase314.github.io/blob/main/files/W2-LSM-tree.pptx) |W12| 事务-并发控制（一）|Reading:|
|W4|存储-传统数据库|Reading:[B+tree](https://www.geeksforgeeks.org/introduction-of-b-tree/?ref=lbp),  [COW-B+tree](http://www.bzero.se/ldapd/btree.html)，[Page Structure，Database Buffer](), [Cache Policy (i](https://www.geeksforgeeks.org/page-replacement-algorithms-in-operating-systems/)[,ii)](http://www.mathcs.emory.edu/~cheung/Courses/355/Syllabus/9-virtual-mem/SC-replace.html) |W13| 事务-并发控制（二）|Reading:|
|W5|存储-并发索引|Reading: Memory Consistency Model，Concurrent Linklist（Lock coupling，Optimistic Read）|W14| 事务-日志管理|Reading:|
|W6|存储-其他 |Reading：Memory Allocation，LRU—Cache，Second Index， Column Store|W15|高可用-数据库备份，Raft（一）|Reading:|
|W7|查询-执行引擎|Reading:|W16|高可用-Raft（二）|Reading:|
|W8|查询-算子实现|Reading:|W17|高可用-分布式一致性与Basic Paxos|Reading:|
|W9|查询-查询优化器|Reading:|W18|分布式数据库主要技术扩展（MPP、分布式事务等）|Reading:|

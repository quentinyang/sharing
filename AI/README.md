# AI (Artificial Intelligence)

## TODO
 * 采样数据（获取哪些数据？通过什么样的方式/途径？）
 * 建立模型
 * 数据验证
 * 算法调优

## Recommendation System

### CF总览

#### User CF & Item CF总结
| CF |群体/个体|计算代价|使用场景|冷启动|可解释性|实时性|
| -- | -- | -- | -- | -- | -- | -- | -- |
|User CF|更依赖于当前用户相近的用户群体的社会化行为|适用于用户数较少的场合|时效性强，用户个性化兴趣不太显著的场合  |新加入的物品能很快进入推荐列表|弱|用户新的行为不一定导致推荐结果的变化|
|Item CF  | 更侧重用户自身的个体行为 |    适用于物品数较少的场合 |长尾物品丰富，用户个性化需求强烈的场合 |新加入的用户能很快得到推荐  | 强 |  用户新的行为一定导致推荐结果的变化 |

#### User CF
 ![User CF](http://www.ibm.com/developerworks/cn/web/1103_zhaoct_recommstudy2/image015.gif)

#### Item CF
 ![Item CF](http://www.ibm.com/developerworks/cn/web/1103_zhaoct_recommstudy2/image017.gif)

### [PredictionIO](https://prediction.io/)

#### Introduction

 - __PredictionIO platform__ - our open source machine learning stack for building, evaluating and deploying engines with machine learning algorithms.
 - __Event Server__ - our open source machine learning analytics layer for unifying events from multiple platforms
 - __Template Gallery__ - the place for you to download [engine templates](http://templates.prediction.io/) for different type of machine learning applications

 ![Overview](https://docs.prediction.io/images/overview-multiengines-b703caac.png)

 ![Event Server](https://docs.prediction.io/images/overview-singleengine-0a99200d.png)

 __优点:__

  - 快速构建和部署一个引擎作为web服务生产和可定制的模板;
  - 回复实时动态查询一次部署为web服务; 　　
  - 从多个平台统一数据批处理或实时综合预测分析; 　
  - 加快机器学习建模与系统流程和预构建的评估措施; 　　
  - 机器学习和数据处理库的支持如Spark MLLib和OpenNLP; 　　
  - 实现自己的机器学习模型和无缝地将其纳入您的引擎; 　　
  - 简化数据基础设施管理。

## Appendix

### Opensource
| Name | Feature | Language | Description |
| --- | --- | --- | --- |
| [PredictionIO](https://prediction.io/) | | Scala(Java) |PredictionIO, a machine learning server for developers and ML engineers. Built on Apache Spark, HBase and Spray. Star: 7908 Fork: 956 Collecting Data: `rate` & `buy` |
| [Seldon](http://www.seldon.io/) | | | Seldon is a Java based prediction engine built on technologies like Apache Spark. |
| [easyrec official](http://easyrec.org/) | | Java | [Easyrec wiki](https://en.wikipedia.org/wiki/Easyrec)|
| [Apache Mahout](http://mahout.apache.org/general/downloads.html) | | Java | Star: 572 Fork: 456 |
| [Apache Spark](http://spark.apache.org/) | | Java | |
| [Dato (Graphlab)](https://dato.com/products/create/open_source.html) || C++ | Non-SaaS Non-OpenSource |

### References
 - [List of Recommender Systems](http://www.maori.geek.nz/list_of_recommender_systems/) 2015 March 16
 - [List of artificial intelligence projects](https://en.wikipedia.org/wiki/List_of_artificial_intelligence_projects)
 - [Recommender systems, Part 1: Introduction to approaches and algorithms ](http://www.ibm.com/developerworks/library/os-recommender1/)
 - [Recommender systems, Part 2: Introducing open source engines](http://www.ibm.com/developerworks/library/os-recommender2/)
 - [探索推荐引擎内部的秘密，第 1 部分: 推荐引擎初探](http://www.ibm.com/developerworks/cn/web/1103_zhaoct_recommstudy1/)
 - [探索推荐引擎内部的秘密，第 2 部分: 深入推荐引擎相关算法 - 协同过滤](http://www.ibm.com/developerworks/cn/web/1103_zhaoct_recommstudy2/)
 - [探索推荐引擎内部的秘密，第 3 部分: 深入推荐引擎相关算法 - 聚类](http://www.ibm.com/developerworks/cn/web/1103_zhaoct_recommstudy3/)
 - [技术干货：人工智能和机器学习领域中有趣的开源项目](http://blog.csdn.net/zdy0_2004/article/details/41733835)
 - [Apache Mahout简介](http://www.ibm.com/developerworks/cn/java/j-mahout/index.html)
 - [Apache Spark](http://spark.apache.org/)
 - [Netflix prize](http://techblog.netflix.com/2012/04/netflix-recommendations-beyond-5-stars.html?cm_mc_uid=10233987865214442943937&cm_mc_sid_50200000=1445659858)
 - [推荐系统开源软件列表汇总和点评](http://blog.csdn.net/cserchen/article/details/14231153)
 - [os-recommender2nder System with the recosystem Package](https://cran.r-project.org/web/packages/recosystem/vignettes/introduction.html)
 - [推荐算法](http://www.zhihu.com/topic/19580544)
    1. [网易云音乐的歌单推荐算法是怎样的？](http://www.zhihu.com/question/26743347)
    1. [如何做好「推荐算法」？有哪些常见的错误需要避免？](http://www.zhihu.com/question/20558659)
 - [美团推荐算法实践](http://tech.meituan.com/mt-recommend-practice.html)
 - [推荐系统中所使用的混合技术介绍](http://www.52ml.net/318.html)
 - [Databricks孟祥瑞：ALS 在 Spark MLlib 中的实现](http://www.csdn.net/article/2015-05-07/2824641) 2015-5-07
 - [推荐算法总结Recommendation](http://blog.csdn.net/oopsoom/article/details/33740799) 2014-06-23 
 - [Spark机器学习库mllib之协同过滤](http://blog.csdn.net/oopsoom/article/details/34462329) 2014-06-25 
 - [MovieLens测试数据](http://grouplens.org/datasets/movielens/)

### 算法

 - 相似度计算
  - [欧几里得距离](https://zh.wikipedia.org/wiki/%E6%AC%A7%E5%87%A0%E9%87%8C%E5%BE%97%E8%B7%9D%E7%A6%BB) [Euclidean distance](https://en.wikipedia. org/wiki/Euclidean_distance)
  - [皮尔逊积矩相关系数](https://zh.wikipedia.org/zh-cn/%E7%9A%AE%E5%B0%94%E9%80%8A%E7%A7%AF%E7%9F%A9%E7%9B%B8%E5%85%B3%E7%B3%BB%E6%95%B0) 
  - [Cosine 相似度](https://zh.wikipedia.org/wiki/%E4%BD%99%E5%BC%A6%E7%9B%B8%E4%BC%BC%E6%80%A7) [Cosine similarity](https://en.wikipedia. org/wiki/Cosine_similarity)
  - [Jaccard 系数](http://baike.baidu.com/view/9579150.htm) [Jaccard Coefficient](https://en.wikipedia.org/wiki/Jaccard_index)

 - [聚类算法（Cluster algorithms）](https://en.wikipedia.org/wiki/Cluster_analysis)
    - [K 均值聚类算法]
    - [Canopy 聚类算法]
    - [模糊 K 均值聚类算法]
    - [狄利克雷聚类算法]
 - [Collaborative filtering](https://en.wikipedia.org/wiki/Collaborative_filtering)
    - [User CF]
    - [Item CF]
    - [Slope One](https://en.wikipedia.org/wiki/Slope_One)
 -  交替最小二乘 (ALS: alternating least squares)
 
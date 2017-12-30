# java9-jigsaw

## Jigsaw 基本语法

        参考来源[openjdk](http://openjdk.java.net/projects/jigsaw/spec/sotms/)
示例1:

        module com.foo.bar {
            requires org.baz.qux;
            exports com.foo.bar.alpha;
            exports com.foo.bar.beta;
        }


module 模块名: 必须 名称可以不与项目结构相同，但一般相同

requires 模块名:非必须 需要的模块，默认requires java.base，module之间使用不存在传递性，当设置为public模块后，所有导入该模块的父模块也访问。

exports 模块名: 非必须 对外模块名称，可以多个

示例2:

    uses java.sql.Driver;

    provides java.sql.Driver with com.mysql.jdbc.Driver;

uses 接口名: 非必须 声明一个特殊接口

provides 接口 with 实现类: 非必须 为接口提供实现类

示例3:

    module java.base {
        ...
        exports sun.reflect to
            java.corba,
            java.logging,
            java.sql,
            java.sql.rowset,
            jdk.scripting.nashorn;
    }

exports 模块 to 多个模块名称 : 非必须 为模块提供多个别名


# 学习中，发现没有一个比较完整的文章，我完善了一下。但由于个人时间问题，无法补全文档，mark一下，以后补全。

.class public Lcom/alibaba/fastjson/util/TypeUtils;
.super Ljava/lang/Object;
.source "TypeUtils.java"


# static fields
.field public static compatibleWithJavaBean:Z

.field private static volatile kotlinIgnores:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile kotlinIgnores_error:Z

.field private static volatile kotlin_class_klass_error:Z

.field private static volatile kotlin_error:Z

.field private static volatile kotlin_kclass_constructor:Ljava/lang/reflect/Constructor;

.field private static volatile kotlin_kclass_getConstructors:Ljava/lang/reflect/Method;

.field private static volatile kotlin_kfunction_getParameters:Ljava/lang/reflect/Method;

.field private static volatile kotlin_kparameter_getName:Ljava/lang/reflect/Method;

.field private static volatile kotlin_metadata:Ljava/lang/Class;

.field private static volatile kotlin_metadata_error:Z

.field private static final mappings:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static setAccessibleEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 46
    const-class v0, [C

    const-class v1, [Z

    const-class v2, [D

    const-class v3, [F

    const-class v4, [J

    const-class v5, [I

    const-class v6, [S

    const-class v7, [B

    const/4 v8, 0x0

    sput-boolean v8, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    .line 47
    const/4 v8, 0x1

    sput-boolean v8, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessibleEnable:Z

    .line 865
    new-instance v9, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v10, 0x24

    const/high16 v11, 0x3f400000    # 0.75f

    invoke-direct {v9, v10, v11, v8}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v9, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    .line 868
    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-string v10, "byte"

    invoke-interface {v9, v10, v8}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    sget-object v8, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-string/jumbo v10, "short"

    invoke-interface {v9, v10, v8}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v10, "int"

    invoke-interface {v9, v10, v8}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-string v10, "long"

    invoke-interface {v9, v10, v8}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v10, "float"

    invoke-interface {v9, v10, v8}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-string v10, "double"

    invoke-interface {v9, v10, v8}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v10, "boolean"

    invoke-interface {v9, v10, v8}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    sget-object v8, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-string v10, "char"

    invoke-interface {v9, v10, v8}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    const-string v8, "[byte"

    invoke-interface {v9, v8, v7}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    const-string v8, "[short"

    invoke-interface {v9, v8, v6}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    const-string v8, "[int"

    invoke-interface {v9, v8, v5}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    const-string v8, "[long"

    invoke-interface {v9, v8, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    const-string v8, "[float"

    invoke-interface {v9, v8, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    const-string v8, "[double"

    invoke-interface {v9, v8, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    const-string v8, "[boolean"

    invoke-interface {v9, v8, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    const-string v8, "[char"

    invoke-interface {v9, v8, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    const-string v8, "[B"

    invoke-interface {v9, v8, v7}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    const-string v7, "[S"

    invoke-interface {v9, v7, v6}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    const-string v6, "[I"

    invoke-interface {v9, v6, v5}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    const-string v5, "[J"

    invoke-interface {v9, v5, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    const-string v4, "[F"

    invoke-interface {v9, v4, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    const-string v3, "[D"

    invoke-interface {v9, v3, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    const-string v2, "[C"

    invoke-interface {v9, v2, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    const-string v0, "[Z"

    invoke-interface {v9, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    const-class v0, Ljava/util/HashMap;

    const-string v1, "java.util.HashMap"

    invoke-interface {v9, v1, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    const-class v0, Ljava/util/TreeMap;

    const-string v1, "java.util.TreeMap"

    invoke-interface {v9, v1, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    const-class v0, Ljava/util/Date;

    const-string v1, "java.util.Date"

    invoke-interface {v9, v1, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    const-class v0, Lcom/alibaba/fastjson/JSONObject;

    const-string v1, "com.alibaba.fastjson.JSONObject"

    invoke-interface {v9, v1, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    const-class v0, Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "java.util.concurrent.ConcurrentHashMap"

    invoke-interface {v9, v1, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    const-class v0, Ljava/text/SimpleDateFormat;

    const-string v1, "java.text.SimpleDateFormat"

    invoke-interface {v9, v1, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    const-class v0, Ljava/lang/StackTraceElement;

    const-string v1, "java.lang.StackTraceElement"

    invoke-interface {v9, v1, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    const-class v0, Ljava/lang/RuntimeException;

    const-string v1, "java.lang.RuntimeException"

    invoke-interface {v9, v1, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMapping(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1718
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1719
    return-void
.end method

.method public static final cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .param p2, "mapping"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    .line 511
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;I)Ljava/lang/Object;
    .locals 6
    .param p0, "obj"    # Ljava/lang/Object;
    .param p2, "mapping"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p3, "features"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "I)TT;"
        }
    .end annotation

    .line 516
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 517
    return-object v0

    .line 520
    :cond_0
    if-eqz p1, :cond_23

    .line 524
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 525
    return-object p0

    .line 528
    :cond_1
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_4

    .line 529
    const-class v0, Ljava/util/Map;

    if-ne p1, v0, :cond_2

    .line 530
    return-object p0

    .line 533
    :cond_2
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    .line 534
    .local v0, "map":Ljava/util/Map;
    const-class v1, Ljava/lang/Object;

    if-ne p1, v1, :cond_3

    const-string v1, "@type"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 535
    return-object p0

    .line 538
    :cond_3
    move-object v1, p0

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, p1, p2, p3}, Lcom/alibaba/fastjson/util/TypeUtils;->castToJavaBean(Ljava/util/Map;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 541
    .end local v0    # "map":Ljava/util/Map;
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 542
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_6

    .line 544
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    .line 545
    .local v0, "collection":Ljava/util/Collection;
    const/4 v1, 0x0

    .line 546
    .local v1, "index":I
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    .line 547
    .local v2, "array":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 548
    .local v4, "item":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v4, v5, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v5

    .line 549
    .local v5, "value":Ljava/lang/Object;
    invoke-static {v2, v1, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 550
    nop

    .end local v4    # "item":Ljava/lang/Object;
    .end local v5    # "value":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    .line 551
    goto :goto_0

    .line 553
    :cond_5
    return-object v2

    .line 556
    .end local v0    # "collection":Ljava/util/Collection;
    .end local v1    # "index":I
    .end local v2    # "array":Ljava/lang/Object;
    :cond_6
    const-class v1, [B

    if-ne p1, v1, :cond_7

    .line 557
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBytes(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0

    .line 561
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 562
    return-object p0

    .line 565
    :cond_8
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_22

    const-class v1, Ljava/lang/Boolean;

    if-ne p1, v1, :cond_9

    goto/16 :goto_9

    .line 569
    :cond_9
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_21

    const-class v1, Ljava/lang/Byte;

    if-ne p1, v1, :cond_a

    goto/16 :goto_8

    .line 573
    :cond_a
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_b

    const-class v1, Ljava/lang/Character;

    if-ne p1, v1, :cond_c

    .line 575
    :cond_b
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 576
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 577
    .local v1, "strVal":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    .line 578
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0

    .line 583
    .end local v1    # "strVal":Ljava/lang/String;
    :cond_c
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_20

    const-class v1, Ljava/lang/Short;

    if-ne p1, v1, :cond_d

    goto/16 :goto_7

    .line 587
    :cond_d
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_1f

    const-class v1, Ljava/lang/Integer;

    if-ne p1, v1, :cond_e

    goto/16 :goto_6

    .line 591
    :cond_e
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_1e

    const-class v1, Ljava/lang/Long;

    if-ne p1, v1, :cond_f

    goto/16 :goto_5

    .line 595
    :cond_f
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_1d

    const-class v1, Ljava/lang/Float;

    if-ne p1, v1, :cond_10

    goto/16 :goto_4

    .line 599
    :cond_10
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_1c

    const-class v1, Ljava/lang/Double;

    if-ne p1, v1, :cond_11

    goto/16 :goto_3

    .line 603
    :cond_11
    const-class v1, Ljava/lang/String;

    if-ne p1, v1, :cond_12

    .line 604
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 607
    :cond_12
    const-class v1, Ljava/math/BigDecimal;

    if-ne p1, v1, :cond_13

    .line 608
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 611
    :cond_13
    const-class v1, Ljava/math/BigInteger;

    if-ne p1, v1, :cond_14

    .line 612
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 615
    :cond_14
    const-class v1, Ljava/util/Date;

    if-ne p1, v1, :cond_15

    .line 616
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 619
    :cond_15
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 620
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->castToEnum(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 623
    :cond_16
    const-class v1, Ljava/util/Calendar;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const-string v2, "can not cast to : "

    if-eqz v1, :cond_18

    .line 624
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v0

    .line 626
    .local v0, "date":Ljava/util/Date;
    const-class v1, Ljava/util/Calendar;

    if-ne p1, v1, :cond_17

    .line 627
    sget-object v1, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    sget-object v2, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    invoke-static {v1, v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    .local v1, "calendar":Ljava/util/Calendar;
    goto :goto_1

    .line 630
    .end local v1    # "calendar":Ljava/util/Calendar;
    :cond_17
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    .restart local v1    # "calendar":Ljava/util/Calendar;
    nop

    .line 635
    :goto_1
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 636
    return-object v1

    .line 631
    .end local v1    # "calendar":Ljava/util/Calendar;
    :catch_0
    move-exception v1

    .line 632
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 639
    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_18
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_1b

    .line 640
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 641
    .local v1, "strVal":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1a

    .line 642
    const-string/jumbo v3, "null"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    goto :goto_2

    .line 646
    :cond_19
    const-class v0, Ljava/util/Currency;

    if-ne p1, v0, :cond_1b

    .line 647
    invoke-static {v1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    return-object v0

    .line 643
    :cond_1a
    :goto_2
    return-object v0

    .line 651
    .end local v1    # "strVal":Ljava/lang/String;
    :cond_1b
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 600
    :cond_1c
    :goto_3
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 596
    :cond_1d
    :goto_4
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 592
    :cond_1e
    :goto_5
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 588
    :cond_1f
    :goto_6
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 584
    :cond_20
    :goto_7
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToShort(Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    .line 570
    :cond_21
    :goto_8
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToByte(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 566
    :cond_22
    :goto_9
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 521
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "clazz is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final cast(Ljava/lang/Object;Ljava/lang/reflect/ParameterizedType;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 8
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "type"    # Ljava/lang/reflect/ParameterizedType;
    .param p2, "mapping"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/ParameterizedType;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    .line 709
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 711
    .local v0, "rawTye":Ljava/lang/reflect/Type;
    const-class v1, Ljava/util/Set;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const-class v1, Ljava/util/HashSet;

    if-eq v0, v1, :cond_0

    const-class v1, Ljava/util/TreeSet;

    if-eq v0, v1, :cond_0

    const-class v1, Ljava/util/List;

    if-eq v0, v1, :cond_0

    const-class v1, Ljava/util/ArrayList;

    if-ne v0, v1, :cond_5

    .line 716
    :cond_0
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, v2

    .line 718
    .local v1, "itemType":Ljava/lang/reflect/Type;
    instance-of v3, p0, Ljava/lang/Iterable;

    if-eqz v3, :cond_5

    .line 720
    const-class v2, Ljava/util/Set;

    if-eq v0, v2, :cond_3

    const-class v2, Ljava/util/HashSet;

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 722
    :cond_1
    const-class v2, Ljava/util/TreeSet;

    if-ne v0, v2, :cond_2

    .line 723
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .local v2, "collection":Ljava/util/Collection;
    goto :goto_1

    .line 725
    .end local v2    # "collection":Ljava/util/Collection;
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .restart local v2    # "collection":Ljava/util/Collection;
    goto :goto_1

    .line 721
    .end local v2    # "collection":Ljava/util/Collection;
    :cond_3
    :goto_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 728
    .restart local v2    # "collection":Ljava/util/Collection;
    :goto_1
    move-object v3, p0

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 729
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 730
    .local v4, "item":Ljava/lang/Object;
    invoke-static {v4, v1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 731
    .end local v4    # "item":Ljava/lang/Object;
    goto :goto_2

    .line 733
    .end local v3    # "it":Ljava/util/Iterator;
    :cond_4
    return-object v2

    .line 737
    .end local v1    # "itemType":Ljava/lang/reflect/Type;
    .end local v2    # "collection":Ljava/util/Collection;
    :cond_5
    const-class v1, Ljava/util/Map;

    const/4 v3, 0x1

    if-eq v0, v1, :cond_6

    const-class v1, Ljava/util/HashMap;

    if-ne v0, v1, :cond_8

    .line 738
    :cond_6
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, v2

    .line 739
    .local v1, "keyType":Ljava/lang/reflect/Type;
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    aget-object v4, v4, v3

    .line 741
    .local v4, "valueType":Ljava/lang/reflect/Type;
    instance-of v5, p0, Ljava/util/Map;

    if-eqz v5, :cond_8

    .line 742
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 744
    .local v2, "map":Ljava/util/Map;
    move-object v3, p0

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 745
    .local v5, "entry":Ljava/util/Map$Entry;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v6

    .line 746
    .local v6, "key":Ljava/lang/Object;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v4, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v7

    .line 748
    .local v7, "value":Ljava/lang/Object;
    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    .end local v5    # "entry":Ljava/util/Map$Entry;
    .end local v6    # "key":Ljava/lang/Object;
    .end local v7    # "value":Ljava/lang/Object;
    goto :goto_3

    .line 751
    :cond_7
    return-object v2

    .line 755
    .end local v1    # "keyType":Ljava/lang/reflect/Type;
    .end local v2    # "map":Ljava/util/Map;
    .end local v4    # "valueType":Ljava/lang/reflect/Type;
    :cond_8
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 756
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 757
    .local v1, "strVal":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_9

    .line 758
    const-string/jumbo v4, "null"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 759
    :cond_9
    const/4 v2, 0x0

    return-object v2

    .line 763
    .end local v1    # "strVal":Ljava/lang/String;
    :cond_a
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    array-length v1, v1

    if-ne v1, v3, :cond_b

    .line 764
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, v2

    .line 765
    .local v1, "argType":Ljava/lang/reflect/Type;
    instance-of v2, v1, Ljava/lang/reflect/WildcardType;

    if-eqz v2, :cond_b

    .line 766
    invoke-static {p0, v0, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 770
    .end local v1    # "argType":Ljava/lang/reflect/Type;
    :cond_b
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not cast to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "mapping"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    .line 680
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 681
    return-object v0

    .line 684
    :cond_0
    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 685
    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    invoke-static {p0, v0, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 688
    :cond_1
    instance-of v1, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_2

    .line 689
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0, v0, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/ParameterizedType;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 692
    :cond_2
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 693
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 694
    .local v1, "strVal":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    .line 695
    const-string/jumbo v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 696
    :cond_3
    return-object v0

    .line 700
    .end local v1    # "strVal":Ljava/lang/String;
    :cond_4
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_5

    .line 701
    return-object p0

    .line 704
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final castToBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 248
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 249
    return-object v0

    .line 252
    :cond_0
    instance-of v1, p0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_1

    .line 253
    move-object v0, p0

    check-cast v0, Ljava/math/BigDecimal;

    return-object v0

    .line 256
    :cond_1
    instance-of v1, p0, Ljava/math/BigInteger;

    if-eqz v1, :cond_2

    .line 257
    new-instance v0, Ljava/math/BigDecimal;

    move-object v1, p0

    check-cast v1, Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    .line 260
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, "strVal":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    .line 262
    const-string/jumbo v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 266
    :cond_3
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 263
    :cond_4
    :goto_0
    return-object v0
.end method

.method public static final castToBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 270
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 271
    return-object v0

    .line 274
    :cond_0
    instance-of v1, p0, Ljava/math/BigInteger;

    if-eqz v1, :cond_1

    .line 275
    move-object v0, p0

    check-cast v0, Ljava/math/BigInteger;

    return-object v0

    .line 278
    :cond_1
    instance-of v1, p0, Ljava/lang/Float;

    if-nez v1, :cond_5

    instance-of v1, p0, Ljava/lang/Double;

    if-eqz v1, :cond_2

    goto :goto_1

    .line 282
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, "strVal":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    .line 284
    const-string/jumbo v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 288
    :cond_3
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 285
    :cond_4
    :goto_0
    return-object v0

    .line 279
    .end local v1    # "strVal":Ljava/lang/String;
    :cond_5
    :goto_1
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static final castToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 474
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 475
    return-object v0

    .line 478
    :cond_0
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 479
    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    .line 482
    :cond_1
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_3

    .line 483
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 486
    :cond_3
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 487
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 488
    .local v1, "strVal":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_8

    .line 489
    const-string/jumbo v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    .line 493
    :cond_4
    const-string/jumbo v0, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 494
    const-string v0, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 497
    :cond_5
    const-string v0, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 498
    const-string v0, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 499
    :cond_6
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 495
    :cond_7
    :goto_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 490
    :cond_8
    :goto_2
    return-object v0

    .line 503
    .end local v1    # "strVal":Ljava/lang/String;
    :cond_9
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to int, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final castToByte(Ljava/lang/Object;)Ljava/lang/Byte;
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 178
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 179
    return-object v0

    .line 182
    :cond_0
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 183
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 186
    :cond_1
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 187
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 188
    .local v1, "strVal":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    .line 189
    const-string/jumbo v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 193
    :cond_2
    invoke-static {v1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 190
    :cond_3
    :goto_0
    return-object v0

    .line 196
    .end local v1    # "strVal":Ljava/lang/String;
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to byte, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final castToBytes(Ljava/lang/Object;)[B
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 462
    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    .line 463
    move-object v0, p0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0

    .line 466
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 467
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    .line 468
    .local v0, "string":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->decodeFast(Ljava/lang/String;II)[B

    move-result-object v1

    return-object v1

    .line 470
    .end local v0    # "string":Ljava/lang/String;
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to int, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final castToChar(Ljava/lang/Object;)Ljava/lang/Character;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .line 200
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 201
    return-object v0

    .line 204
    :cond_0
    instance-of v1, p0, Ljava/lang/Character;

    if-eqz v1, :cond_1

    .line 205
    move-object v0, p0

    check-cast v0, Ljava/lang/Character;

    return-object v0

    .line 208
    :cond_1
    instance-of v1, p0, Ljava/lang/String;

    const-string v2, "can not cast to byte, value : "

    if-eqz v1, :cond_4

    .line 209
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 211
    .local v1, "strVal":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 212
    return-object v0

    .line 215
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    .line 219
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0

    .line 216
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    .end local v1    # "strVal":Ljava/lang/String;
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final castToDate(Ljava/lang/Object;)Ljava/util/Date;
    .locals 9
    .param p0, "value"    # Ljava/lang/Object;

    .line 337
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 338
    return-object v0

    .line 341
    :cond_0
    instance-of v1, p0, Ljava/util/Calendar;

    if-eqz v1, :cond_1

    .line 342
    move-object v0, p0

    check-cast v0, Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 345
    :cond_1
    instance-of v1, p0, Ljava/util/Date;

    if-eqz v1, :cond_2

    .line 346
    move-object v0, p0

    check-cast v0, Ljava/util/Date;

    return-object v0

    .line 349
    :cond_2
    const-wide/16 v1, -0x1

    .line 351
    .local v1, "longValue":J
    instance-of v3, p0, Ljava/lang/Number;

    if-eqz v3, :cond_3

    .line 352
    move-object v3, p0

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 355
    :cond_3
    instance-of v3, p0, Ljava/lang/String;

    const-string v4, "can not cast to Date, value : "

    if-eqz v3, :cond_b

    .line 356
    move-object v3, p0

    check-cast v3, Ljava/lang/String;

    .line 358
    .local v3, "strVal":Ljava/lang/String;
    const/16 v5, 0x2d

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_8

    .line 360
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    sget-object v5, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v0, v5, :cond_4

    .line 361
    sget-object v0, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    .local v0, "format":Ljava/lang/String;
    goto :goto_0

    .line 362
    .end local v0    # "format":Ljava/lang/String;
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v5, 0xa

    if-ne v0, v5, :cond_5

    .line 363
    const-string/jumbo v0, "yyyy-MM-dd"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_0

    .line 364
    .end local v0    # "format":Ljava/lang/String;
    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v0, v5, :cond_6

    .line 365
    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_0

    .line 366
    .end local v0    # "format":Ljava/lang/String;
    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v5, 0x1d

    if-ne v0, v5, :cond_7

    const/16 v0, 0x1a

    .line 367
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x3a

    if-ne v0, v5, :cond_7

    const/16 v0, 0x1c

    .line 368
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x30

    if-ne v0, v5, :cond_7

    .line 369
    const-string/jumbo v0, "yyyy-MM-dd\'T\'HH:mm:ss.SSSXXX"

    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_0

    .line 371
    .end local v0    # "format":Ljava/lang/String;
    :cond_7
    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 374
    .restart local v0    # "format":Ljava/lang/String;
    :goto_0
    new-instance v5, Ljava/text/SimpleDateFormat;

    sget-object v6, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    invoke-direct {v5, v0, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 375
    .local v5, "dateFormat":Ljava/text/SimpleDateFormat;
    sget-object v6, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 377
    :try_start_0
    invoke-virtual {v5, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 378
    :catch_0
    move-exception v6

    .line 379
    .local v6, "e":Ljava/text/ParseException;
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 383
    .end local v0    # "format":Ljava/lang/String;
    .end local v5    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v6    # "e":Ljava/text/ParseException;
    :cond_8
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_a

    .line 384
    const-string/jumbo v5, "null"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_1

    .line 388
    :cond_9
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_2

    .line 385
    :cond_a
    :goto_1
    return-object v0

    .line 391
    .end local v3    # "strVal":Ljava/lang/String;
    :cond_b
    :goto_2
    const-wide/16 v5, 0x0

    cmp-long v0, v1, v5

    if-ltz v0, :cond_c

    .line 395
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0

    .line 392
    :cond_c
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final castToDouble(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .line 314
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 315
    return-object v0

    .line 318
    :cond_0
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 319
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 322
    :cond_1
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 323
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, "strVal":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    .line 325
    const-string/jumbo v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 326
    const-string v2, "NULL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 330
    :cond_2
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 327
    :cond_3
    :goto_0
    return-object v0

    .line 333
    .end local v1    # "strVal":Ljava/lang/String;
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to double, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final castToEnum(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;
    .param p2, "mapping"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    .line 657
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string v0, "can not cast to : "

    :try_start_0
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 658
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 659
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 660
    const/4 v0, 0x0

    return-object v0

    .line 662
    :cond_0
    invoke-static {p1, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0

    .line 664
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_2

    .line 665
    move-object v1, p0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 666
    .local v1, "ordinal":I
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v2

    .line 667
    .local v2, "values":[Ljava/lang/Object;
    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 668
    aget-object v0, v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 673
    .end local v1    # "ordinal":I
    .end local v2    # "values":[Ljava/lang/Object;
    :cond_2
    nop

    .line 675
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 671
    :catch_0
    move-exception v1

    .line 672
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static final castToFloat(Ljava/lang/Object;)Ljava/lang/Float;
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 292
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 293
    return-object v0

    .line 296
    :cond_0
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 297
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 300
    :cond_1
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 301
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, "strVal":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    .line 303
    const-string/jumbo v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 307
    :cond_2
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 304
    :cond_3
    :goto_0
    return-object v0

    .line 310
    .end local v1    # "strVal":Ljava/lang/String;
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to float, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final castToInt(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 436
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 437
    return-object v0

    .line 440
    :cond_0
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 441
    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    return-object v0

    .line 444
    :cond_1
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_2

    .line 445
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 448
    :cond_2
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 449
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 450
    .local v1, "strVal":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    .line 451
    const-string/jumbo v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 455
    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 452
    :cond_4
    :goto_0
    return-object v0

    .line 458
    .end local v1    # "strVal":Ljava/lang/String;
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to int, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final castToJavaBean(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 507
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final castToJavaBean(Ljava/util/Map;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 1
    .param p2, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    .line 774
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToJavaBean(Ljava/util/Map;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final castToJavaBean(Ljava/util/Map;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;I)Ljava/lang/Object;
    .locals 6
    .param p2, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p3, "features"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "I)TT;"
        }
    .end annotation

    .line 780
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    const-class v0, Ljava/lang/StackTraceElement;

    if-ne p1, v0, :cond_1

    .line 781
    const-string v0, "className"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 782
    .local v0, "declaringClass":Ljava/lang/String;
    const-string/jumbo v1, "methodName"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 783
    .local v1, "methodName":Ljava/lang/String;
    const-string v2, "fileName"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 786
    .local v2, "fileName":Ljava/lang/String;
    const-string v3, "lineNumber"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    .line 787
    .local v3, "value":Ljava/lang/Number;
    if-nez v3, :cond_0

    .line 788
    const/4 v4, 0x0

    .local v4, "lineNumber":I
    goto :goto_0

    .line 790
    .end local v4    # "lineNumber":I
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 794
    .end local v3    # "value":Ljava/lang/Number;
    .restart local v4    # "lineNumber":I
    :goto_0
    new-instance v3, Ljava/lang/StackTraceElement;

    invoke-direct {v3, v0, v1, v2, v4}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v3

    .line 798
    .end local v0    # "declaringClass":Ljava/lang/String;
    .end local v1    # "methodName":Ljava/lang/String;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v4    # "lineNumber":I
    :cond_1
    const-string v0, "@type"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 799
    .local v0, "iClassObject":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 800
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 802
    .local v1, "className":Ljava/lang/String;
    if-nez p2, :cond_2

    .line 803
    sget-object v2, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    move-object p2, v2

    .line 806
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, p3}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v2

    .line 808
    .local v2, "loadClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_3

    .line 812
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 813
    invoke-static {p0, v2, p2, p3}, Lcom/alibaba/fastjson/util/TypeUtils;->castToJavaBean(Ljava/util/Map;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;I)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 809
    :cond_3
    new-instance v3, Ljava/lang/ClassNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    .end local p0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local p1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local p2    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .end local p3    # "features":I
    throw v3

    .line 818
    .end local v0    # "iClassObject":Ljava/lang/Object;
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "loadClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local p1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .restart local p2    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .restart local p3    # "features":I
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 821
    instance-of v0, p0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_5

    .line 822
    move-object v0, p0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .local v0, "object":Lcom/alibaba/fastjson/JSONObject;
    goto :goto_1

    .line 824
    .end local v0    # "object":Lcom/alibaba/fastjson/JSONObject;
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    .line 827
    .restart local v0    # "object":Lcom/alibaba/fastjson/JSONObject;
    :goto_1
    if-nez p2, :cond_6

    .line 828
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v1

    move-object p2, v1

    .line 831
    :cond_6
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v1

    .line 832
    .local v1, "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    if-eqz v1, :cond_7

    .line 833
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 834
    .local v2, "json":Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 837
    .end local v2    # "json":Ljava/lang/String;
    :cond_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 841
    .end local v0    # "object":Lcom/alibaba/fastjson/JSONObject;
    .end local v1    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_8
    const-class v0, Ljava/lang/String;

    if-ne p1, v0, :cond_9

    instance-of v0, p0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_9

    .line 842
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 845
    :cond_9
    if-nez p2, :cond_a

    .line 846
    sget-object v0, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    move-object p2, v0

    .line 849
    :cond_a
    const/4 v0, 0x0

    .line 850
    .local v0, "javaBeanDeser":Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v1

    .line 851
    .local v1, "deserizer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    instance-of v2, v1, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    if-eqz v2, :cond_b

    .line 852
    move-object v2, v1

    check-cast v2, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    move-object v0, v2

    .line 855
    :cond_b
    if-eqz v0, :cond_c

    .line 859
    invoke-virtual {v0, p0, p2}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->createInstance(Ljava/util/Map;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 856
    :cond_c
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "can not get javaBeanDeserializer"

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local p0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local p1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local p2    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .end local p3    # "features":I
    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 860
    .end local v0    # "javaBeanDeser":Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;
    .end local v1    # "deserizer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .restart local p0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local p1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .restart local p2    # "config":Lcom/alibaba/fastjson/parser/ParserConfig;
    .restart local p3    # "features":I
    :catch_0
    move-exception v0

    .line 861
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static final castToLong(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 5
    .param p0, "value"    # Ljava/lang/Object;

    .line 399
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 400
    return-object v0

    .line 403
    :cond_0
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 404
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 407
    :cond_1
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 408
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 409
    .local v1, "strVal":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    .line 410
    const-string/jumbo v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 415
    :cond_2
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 416
    :catch_0
    move-exception v0

    .line 420
    new-instance v0, Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>(Ljava/lang/String;)V

    .line 421
    .local v0, "dateParser":Lcom/alibaba/fastjson/parser/JSONLexer;
    const/4 v2, 0x0

    .line 422
    .local v2, "calendar":Ljava/util/Calendar;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanISO8601DateIfMatch(Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 423
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    .line 425
    :cond_3
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    .line 427
    if-eqz v2, :cond_5

    .line 428
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    return-object v3

    .line 411
    .end local v0    # "dateParser":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v2    # "calendar":Ljava/util/Calendar;
    :cond_4
    :goto_0
    return-object v0

    .line 432
    .end local v1    # "strVal":Ljava/lang/String;
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to long, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final castToShort(Ljava/lang/Object;)Ljava/lang/Short;
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 226
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 227
    return-object v0

    .line 230
    :cond_0
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 231
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    .line 234
    :cond_1
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 235
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 236
    .local v1, "strVal":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    .line 237
    const-string/jumbo v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 241
    :cond_2
    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    .line 238
    :cond_3
    :goto_0
    return-object v0

    .line 244
    .end local v1    # "strVal":Ljava/lang/String;
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to short, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final castToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;

    .line 170
    if-nez p0, :cond_0

    .line 171
    const/4 v0, 0x0

    return-object v0

    .line 174
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static checkPrimitiveArray(Ljava/lang/reflect/GenericArrayType;)Ljava/lang/reflect/Type;
    .locals 6
    .param p0, "genericArrayType"    # Ljava/lang/reflect/GenericArrayType;

    .line 1722
    move-object v0, p0

    .line 1723
    .local v0, "clz":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 1725
    .local v1, "genericComponentType":Ljava/lang/reflect/Type;
    const-string v2, "["

    .line 1726
    .local v2, "prefix":Ljava/lang/String;
    :goto_0
    instance-of v3, v1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v3, :cond_0

    .line 1727
    move-object v3, v1

    check-cast v3, Ljava/lang/reflect/GenericArrayType;

    .line 1728
    invoke-interface {v3}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 1729
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1732
    :cond_0
    instance-of v3, v1, Ljava/lang/Class;

    if-eqz v3, :cond_9

    .line 1733
    move-object v3, v1

    check-cast v3, Ljava/lang/Class;

    .line 1734
    .local v3, "ck":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1736
    :try_start_0
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_1

    .line 1737
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Z"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_1

    .line 1738
    :cond_1
    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_2

    .line 1739
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "C"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_1

    .line 1740
    :cond_2
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_3

    .line 1741
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "B"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_1

    .line 1742
    :cond_3
    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_4

    .line 1743
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "S"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_1

    .line 1744
    :cond_4
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_5

    .line 1745
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "I"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object v0, v4

    goto :goto_1

    .line 1746
    :cond_5
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_6

    .line 1747
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "J"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object v0, v4

    goto :goto_1

    .line 1748
    :cond_6
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_7

    .line 1749
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "F"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object v0, v4

    goto :goto_1

    .line 1750
    :cond_7
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_8

    .line 1751
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "D"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 1754
    :cond_8
    :goto_1
    goto :goto_2

    .line 1753
    :catch_0
    move-exception v4

    .line 1758
    .end local v3    # "ck":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_9
    :goto_2
    return-object v0
.end method

.method public static computeGetters(Ljava/lang/Class;IZLcom/alibaba/fastjson/annotation/JSONType;Ljava/util/Map;ZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;
    .locals 46
    .param p1, "modifiers"    # I
    .param p2, "fieldOnly"    # Z
    .param p3, "jsonType"    # Lcom/alibaba/fastjson/annotation/JSONType;
    .param p5, "sorted"    # Z
    .param p6, "jsonFieldSupport"    # Z
    .param p7, "fieldGenericSupport"    # Z
    .param p8, "propertyNamingStrategy"    # Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;IZ",
            "Lcom/alibaba/fastjson/annotation/JSONType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZZ",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;"
        }
    .end annotation

    .line 996
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p4, "aliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v11, p0

    move/from16 v12, p1

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p8

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v10, v0

    .line 997
    .local v10, "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v9, v0

    .line 999
    .local v9, "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v8

    .line 1000
    .local v8, "declaredFields":[Ljava/lang/reflect/Field;
    const/16 v16, 0x0

    if-nez p2, :cond_43

    .line 1001
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->isKotlin(Ljava/lang/Class;)Z

    move-result v17

    .line 1003
    .local v17, "kotlin":Z
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 1005
    .local v5, "methodList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    move-object/from16 v0, p0

    .local v0, "cls":Ljava/lang/Class;
    :goto_0
    if-eqz v0, :cond_5

    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_5

    .line 1006
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1007
    .local v1, "declaredMethods":[Ljava/lang/reflect/Method;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 1008
    .local v4, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v7

    .line 1010
    .local v7, "modifier":I
    and-int/lit8 v19, v7, 0x8

    if-nez v19, :cond_2

    and-int/lit8 v19, v7, 0x2

    if-nez v19, :cond_2

    and-int/lit16 v6, v7, 0x100

    if-nez v6, :cond_2

    and-int/lit8 v6, v7, 0x4

    if-eqz v6, :cond_0

    .line 1014
    move-object/from16 v20, v1

    goto :goto_2

    .line 1017
    :cond_0
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    move-object/from16 v20, v1

    .end local v1    # "declaredMethods":[Ljava/lang/reflect/Method;
    .local v20, "declaredMethods":[Ljava/lang/reflect/Method;
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1018
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_3

    .line 1019
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    const-class v6, Ljava/lang/ClassLoader;

    if-eq v1, v6, :cond_3

    .line 1020
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    const-class v6, Ljava/lang/Object;

    if-ne v1, v6, :cond_1

    .line 1022
    goto :goto_2

    .line 1025
    :cond_1
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1010
    .end local v20    # "declaredMethods":[Ljava/lang/reflect/Method;
    .restart local v1    # "declaredMethods":[Ljava/lang/reflect/Method;
    :cond_2
    move-object/from16 v20, v1

    .line 1007
    .end local v1    # "declaredMethods":[Ljava/lang/reflect/Method;
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v7    # "modifier":I
    .restart local v20    # "declaredMethods":[Ljava/lang/reflect/Method;
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, v20

    goto :goto_1

    .end local v20    # "declaredMethods":[Ljava/lang/reflect/Method;
    .restart local v1    # "declaredMethods":[Ljava/lang/reflect/Method;
    :cond_4
    move-object/from16 v20, v1

    .line 1005
    .end local v1    # "declaredMethods":[Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 1030
    .end local v0    # "cls":Ljava/lang/Class;
    :cond_5
    const/4 v0, 0x0

    .line 1031
    .local v0, "constructors":[Ljava/lang/reflect/Constructor;
    move-object/from16 v1, v16

    check-cast v1, [[Ljava/lang/annotation/Annotation;

    .line 1032
    .local v1, "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    const/4 v2, 0x0

    .line 1033
    .local v2, "paramNames":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 1035
    .local v3, "paramNameMapping":[S
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Ljava/lang/reflect/Method;

    .line 1036
    .local v7, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1037
    .local v6, "methodName":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "ordinal":I
    const/16 v21, 0x0

    .line 1039
    .local v21, "serialzeFeatures":I
    move-object/from16 v22, v1

    .end local v1    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .local v22, "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    const-string v1, "getMetaClass"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1040
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v23, v2

    .end local v2    # "paramNames":[Ljava/lang/String;
    .local v23, "paramNames":[Ljava/lang/String;
    const-string v2, "groovy.lang.MetaClass"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1041
    goto :goto_5

    .line 1039
    .end local v23    # "paramNames":[Ljava/lang/String;
    .restart local v2    # "paramNames":[Ljava/lang/String;
    :cond_6
    move-object/from16 v23, v2

    .line 1044
    .end local v2    # "paramNames":[Ljava/lang/String;
    .restart local v23    # "paramNames":[Ljava/lang/String;
    :cond_7
    if-eqz p6, :cond_8

    const-class v1, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v7, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONField;

    goto :goto_4

    :cond_8
    move-object/from16 v1, v16

    .line 1046
    .local v1, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :goto_4
    if-nez v1, :cond_9

    if-eqz p6, :cond_9

    .line 1047
    invoke-static {v11, v7}, Lcom/alibaba/fastjson/util/TypeUtils;->getSupperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v1

    .line 1050
    :cond_9
    if-eqz v17, :cond_a

    invoke-static {v11, v6}, Lcom/alibaba/fastjson/util/TypeUtils;->isKotlinIgnore(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1051
    nop

    .line 1035
    .end local v1    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v4    # "ordinal":I
    .end local v6    # "methodName":Ljava/lang/String;
    .end local v7    # "method":Ljava/lang/reflect/Method;
    .end local v21    # "serialzeFeatures":I
    :goto_5
    move-object/from16 v1, v22

    move-object/from16 v2, v23

    goto :goto_3

    .line 1054
    .restart local v1    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v4    # "ordinal":I
    .restart local v6    # "methodName":Ljava/lang/String;
    .restart local v7    # "method":Ljava/lang/reflect/Method;
    .restart local v21    # "serialzeFeatures":I
    :cond_a
    const-string v2, "get"

    move-object/from16 v24, v5

    .end local v5    # "methodList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    .local v24, "methodList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    if-nez v1, :cond_17

    if-eqz v17, :cond_17

    .line 1055
    if-nez v0, :cond_e

    .line 1056
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 1057
    array-length v5, v0

    move-object/from16 v26, v3

    const/4 v3, 0x1

    .end local v3    # "paramNameMapping":[S
    .local v26, "paramNameMapping":[S
    if-ne v5, v3, :cond_d

    .line 1058
    const/4 v5, 0x0

    aget-object v18, v0, v5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v18

    .line 1059
    .end local v22    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .local v18, "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getKoltinConstructorParameters(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v3

    .line 1061
    .end local v23    # "paramNames":[Ljava/lang/String;
    .local v3, "paramNames":[Ljava/lang/String;
    if-eqz v3, :cond_c

    .line 1062
    array-length v5, v3

    new-array v5, v5, [Ljava/lang/String;

    .line 1063
    .local v5, "paramNames_sorted":[Ljava/lang/String;
    move-object/from16 v28, v0

    .end local v0    # "constructors":[Ljava/lang/reflect/Constructor;
    .local v28, "constructors":[Ljava/lang/reflect/Constructor;
    array-length v0, v3

    move-object/from16 v29, v8

    const/4 v8, 0x0

    .end local v8    # "declaredFields":[Ljava/lang/reflect/Field;
    .local v29, "declaredFields":[Ljava/lang/reflect/Field;
    invoke-static {v3, v8, v5, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1064
    invoke-static {v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1066
    array-length v0, v3

    new-array v0, v0, [S

    .line 1067
    .end local v26    # "paramNameMapping":[S
    .local v0, "paramNameMapping":[S
    const/16 v22, 0x0

    move/from16 v8, v22

    .local v8, "p":S
    :goto_6
    move-object/from16 v30, v1

    .end local v1    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v30, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    array-length v1, v3

    if-ge v8, v1, :cond_b

    .line 1068
    aget-object v1, v3, v8

    invoke-static {v5, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 1069
    .local v1, "index":I
    aput-short v8, v0, v1

    .line 1067
    .end local v1    # "index":I
    add-int/lit8 v1, v8, 0x1

    int-to-short v8, v1

    move-object/from16 v1, v30

    goto :goto_6

    .line 1071
    .end local v8    # "p":S
    :cond_b
    move-object v1, v5

    move-object/from16 v26, v0

    move-object v3, v1

    move-object/from16 v1, v18

    move-object/from16 v0, v28

    .end local v3    # "paramNames":[Ljava/lang/String;
    .local v1, "paramNames":[Ljava/lang/String;
    goto :goto_7

    .line 1061
    .end local v5    # "paramNames_sorted":[Ljava/lang/String;
    .end local v28    # "constructors":[Ljava/lang/reflect/Constructor;
    .end local v29    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v30    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v0, "constructors":[Ljava/lang/reflect/Constructor;
    .local v1, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v3    # "paramNames":[Ljava/lang/String;
    .local v8, "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v26    # "paramNameMapping":[S
    :cond_c
    move-object/from16 v28, v0

    move-object/from16 v30, v1

    move-object/from16 v29, v8

    .end local v0    # "constructors":[Ljava/lang/reflect/Constructor;
    .end local v1    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v8    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v28    # "constructors":[Ljava/lang/reflect/Constructor;
    .restart local v29    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v30    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    move-object/from16 v1, v18

    goto :goto_7

    .line 1057
    .end local v3    # "paramNames":[Ljava/lang/String;
    .end local v18    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v28    # "constructors":[Ljava/lang/reflect/Constructor;
    .end local v29    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v30    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v0    # "constructors":[Ljava/lang/reflect/Constructor;
    .restart local v1    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v8    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v22    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .restart local v23    # "paramNames":[Ljava/lang/String;
    :cond_d
    move-object/from16 v28, v0

    move-object/from16 v30, v1

    move-object/from16 v29, v8

    .end local v0    # "constructors":[Ljava/lang/reflect/Constructor;
    .end local v1    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v8    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v28    # "constructors":[Ljava/lang/reflect/Constructor;
    .restart local v29    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v30    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    move-object/from16 v1, v22

    move-object/from16 v3, v23

    goto :goto_7

    .line 1055
    .end local v26    # "paramNameMapping":[S
    .end local v28    # "constructors":[Ljava/lang/reflect/Constructor;
    .end local v29    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v30    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v0    # "constructors":[Ljava/lang/reflect/Constructor;
    .restart local v1    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v3, "paramNameMapping":[S
    .restart local v8    # "declaredFields":[Ljava/lang/reflect/Field;
    :cond_e
    move-object/from16 v30, v1

    move-object/from16 v26, v3

    move-object/from16 v29, v8

    .end local v1    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v3    # "paramNameMapping":[S
    .end local v8    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v26    # "paramNameMapping":[S
    .restart local v29    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v30    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    move-object/from16 v1, v22

    move-object/from16 v3, v23

    .line 1076
    .end local v22    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v23    # "paramNames":[Ljava/lang/String;
    .local v1, "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .local v3, "paramNames":[Ljava/lang/String;
    :goto_7
    if-eqz v3, :cond_16

    if-eqz v26, :cond_16

    invoke-virtual {v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 1077
    const/4 v5, 0x3

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1078
    .local v5, "propertyName":Ljava/lang/String;
    invoke-static {v3, v5}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    .line 1079
    .local v8, "p":I
    if-gez v8, :cond_10

    .line 1080
    const/16 v18, 0x0

    move-object/from16 v22, v0

    move/from16 v0, v18

    .local v0, "i":I
    .local v22, "constructors":[Ljava/lang/reflect/Constructor;
    :goto_8
    move/from16 v18, v4

    .end local v4    # "ordinal":I
    .local v18, "ordinal":I
    array-length v4, v3

    if-ge v0, v4, :cond_11

    .line 1081
    aget-object v4, v3, v0

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1082
    move v8, v0

    .line 1083
    goto :goto_9

    .line 1080
    :cond_f
    add-int/lit8 v0, v0, 0x1

    move/from16 v4, v18

    goto :goto_8

    .line 1079
    .end local v18    # "ordinal":I
    .end local v22    # "constructors":[Ljava/lang/reflect/Constructor;
    .local v0, "constructors":[Ljava/lang/reflect/Constructor;
    .restart local v4    # "ordinal":I
    :cond_10
    move-object/from16 v22, v0

    move/from16 v18, v4

    .line 1087
    .end local v0    # "constructors":[Ljava/lang/reflect/Constructor;
    .end local v4    # "ordinal":I
    .restart local v18    # "ordinal":I
    .restart local v22    # "constructors":[Ljava/lang/reflect/Constructor;
    :cond_11
    :goto_9
    if-ltz v8, :cond_15

    .line 1088
    aget-short v0, v26, v8

    .line 1089
    .local v0, "index":S
    aget-object v4, v1, v0

    .line 1090
    .local v4, "paramAnnotations":[Ljava/lang/annotation/Annotation;
    if-eqz v4, :cond_14

    .line 1091
    move/from16 v23, v0

    .end local v0    # "index":S
    .local v23, "index":S
    array-length v0, v4

    move-object/from16 v28, v1

    const/4 v1, 0x0

    .end local v1    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .local v28, "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    :goto_a
    if-ge v1, v0, :cond_13

    move/from16 v31, v0

    aget-object v0, v4, v1

    .line 1092
    .local v0, "paramAnnotation":Ljava/lang/annotation/Annotation;
    move-object/from16 v32, v3

    .end local v3    # "paramNames":[Ljava/lang/String;
    .local v32, "paramNames":[Ljava/lang/String;
    instance-of v3, v0, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v3, :cond_12

    .line 1093
    move-object v1, v0

    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1094
    .end local v30    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v1, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    move-object/from16 v30, v1

    goto :goto_b

    .line 1091
    .end local v0    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    .end local v1    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v30    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_12
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v31

    move-object/from16 v3, v32

    goto :goto_a

    .end local v32    # "paramNames":[Ljava/lang/String;
    .restart local v3    # "paramNames":[Ljava/lang/String;
    :cond_13
    move-object/from16 v32, v3

    .end local v3    # "paramNames":[Ljava/lang/String;
    .restart local v32    # "paramNames":[Ljava/lang/String;
    goto :goto_b

    .line 1090
    .end local v23    # "index":S
    .end local v28    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v32    # "paramNames":[Ljava/lang/String;
    .local v0, "index":S
    .local v1, "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .restart local v3    # "paramNames":[Ljava/lang/String;
    :cond_14
    move/from16 v23, v0

    move-object/from16 v28, v1

    move-object/from16 v32, v3

    .end local v0    # "index":S
    .end local v1    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v3    # "paramNames":[Ljava/lang/String;
    .restart local v23    # "index":S
    .restart local v28    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .restart local v32    # "paramNames":[Ljava/lang/String;
    goto :goto_b

    .line 1087
    .end local v4    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    .end local v23    # "index":S
    .end local v28    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v32    # "paramNames":[Ljava/lang/String;
    .restart local v1    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .restart local v3    # "paramNames":[Ljava/lang/String;
    :cond_15
    move-object/from16 v28, v1

    move-object/from16 v32, v3

    .end local v1    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v3    # "paramNames":[Ljava/lang/String;
    .restart local v28    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .restart local v32    # "paramNames":[Ljava/lang/String;
    goto :goto_b

    .line 1076
    .end local v5    # "propertyName":Ljava/lang/String;
    .end local v8    # "p":I
    .end local v18    # "ordinal":I
    .end local v22    # "constructors":[Ljava/lang/reflect/Constructor;
    .end local v28    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v32    # "paramNames":[Ljava/lang/String;
    .local v0, "constructors":[Ljava/lang/reflect/Constructor;
    .restart local v1    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .restart local v3    # "paramNames":[Ljava/lang/String;
    .local v4, "ordinal":I
    :cond_16
    move-object/from16 v22, v0

    move-object/from16 v28, v1

    move-object/from16 v32, v3

    move/from16 v18, v4

    .end local v0    # "constructors":[Ljava/lang/reflect/Constructor;
    .end local v1    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v3    # "paramNames":[Ljava/lang/String;
    .end local v4    # "ordinal":I
    .restart local v18    # "ordinal":I
    .restart local v22    # "constructors":[Ljava/lang/reflect/Constructor;
    .restart local v28    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .restart local v32    # "paramNames":[Ljava/lang/String;
    goto :goto_b

    .line 1054
    .end local v18    # "ordinal":I
    .end local v26    # "paramNameMapping":[S
    .end local v28    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v29    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v30    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v32    # "paramNames":[Ljava/lang/String;
    .restart local v0    # "constructors":[Ljava/lang/reflect/Constructor;
    .local v1, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v3, "paramNameMapping":[S
    .restart local v4    # "ordinal":I
    .local v8, "declaredFields":[Ljava/lang/reflect/Field;
    .local v22, "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .local v23, "paramNames":[Ljava/lang/String;
    :cond_17
    move-object/from16 v30, v1

    move-object/from16 v26, v3

    move/from16 v18, v4

    move-object/from16 v29, v8

    .line 1102
    .end local v1    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v3    # "paramNameMapping":[S
    .end local v4    # "ordinal":I
    .end local v8    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v18    # "ordinal":I
    .restart local v26    # "paramNameMapping":[S
    .restart local v29    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v30    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    move-object/from16 v28, v22

    move-object/from16 v32, v23

    move-object/from16 v22, v0

    .end local v0    # "constructors":[Ljava/lang/reflect/Constructor;
    .end local v23    # "paramNames":[Ljava/lang/String;
    .local v22, "constructors":[Ljava/lang/reflect/Constructor;
    .restart local v28    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .restart local v32    # "paramNames":[Ljava/lang/String;
    :goto_b
    const/4 v0, 0x0

    .line 1103
    .local v0, "fieldAnnotationExists":Z
    if-eqz v30, :cond_1c

    .line 1104
    invoke-interface/range {v30 .. v30}, Lcom/alibaba/fastjson/annotation/JSONField;->serialize()Z

    move-result v1

    if-nez v1, :cond_18

    .line 1105
    move-object/from16 v34, v9

    move-object v14, v10

    move-object/from16 v43, v29

    const/16 v19, 0x1

    const/16 v27, 0x0

    goto/16 :goto_19

    .line 1108
    :cond_18
    invoke-interface/range {v30 .. v30}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v18

    .line 1109
    invoke-interface/range {v30 .. v30}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v21

    .line 1111
    invoke-interface/range {v30 .. v30}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1b

    .line 1112
    invoke-interface/range {v30 .. v30}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    .line 1113
    .local v1, "propertyName":Ljava/lang/String;
    const/16 v23, 0x1

    .line 1115
    .end local v0    # "fieldAnnotationExists":Z
    .local v23, "fieldAnnotationExists":Z
    if-eqz v14, :cond_1a

    .line 1116
    invoke-interface {v14, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 1117
    if-nez v1, :cond_19

    .line 1118
    move-object/from16 v34, v9

    move-object v14, v10

    move-object/from16 v43, v29

    const/16 v19, 0x1

    const/16 v27, 0x0

    goto/16 :goto_19

    .line 1117
    :cond_19
    move-object v8, v1

    goto :goto_c

    .line 1115
    :cond_1a
    move-object v8, v1

    .line 1122
    .end local v1    # "propertyName":Ljava/lang/String;
    .local v8, "propertyName":Ljava/lang/String;
    :goto_c
    invoke-static {v11, v7, v12}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 1123
    new-instance v5, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v3, 0x0

    const/16 v25, 0x0

    const/16 v31, 0x0

    const/16 v33, 0x1

    move-object v0, v5

    move-object v1, v8

    move-object v2, v7

    const/16 v19, 0x1

    move-object/from16 v4, p0

    move-object/from16 v34, v5

    const/16 v27, 0x0

    move-object/from16 v5, v25

    move-object/from16 v35, v6

    .end local v6    # "methodName":Ljava/lang/String;
    .local v35, "methodName":Ljava/lang/String;
    move/from16 v6, v18

    move-object/from16 v36, v7

    .end local v7    # "method":Ljava/lang/reflect/Method;
    .local v36, "method":Ljava/lang/reflect/Method;
    move/from16 v7, v21

    move-object/from16 v38, v8

    move-object/from16 v37, v29

    .end local v8    # "propertyName":Ljava/lang/String;
    .end local v29    # "declaredFields":[Ljava/lang/reflect/Field;
    .local v37, "declaredFields":[Ljava/lang/reflect/Field;
    .local v38, "propertyName":Ljava/lang/String;
    move-object/from16 v8, v30

    move-object/from16 v39, v9

    .end local v9    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .local v39, "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    move-object/from16 v9, v31

    move-object v12, v10

    .end local v10    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v12, "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    move/from16 v10, v33

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    .end local v38    # "propertyName":Ljava/lang/String;
    .restart local v1    # "propertyName":Ljava/lang/String;
    invoke-interface {v12, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1125
    move-object v14, v12

    move-object/from16 v43, v37

    move-object/from16 v34, v39

    move/from16 v12, p1

    goto/16 :goto_19

    .line 1111
    .end local v1    # "propertyName":Ljava/lang/String;
    .end local v12    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v23    # "fieldAnnotationExists":Z
    .end local v35    # "methodName":Ljava/lang/String;
    .end local v36    # "method":Ljava/lang/reflect/Method;
    .end local v37    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v39    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .restart local v0    # "fieldAnnotationExists":Z
    .restart local v6    # "methodName":Ljava/lang/String;
    .restart local v7    # "method":Ljava/lang/reflect/Method;
    .restart local v9    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .restart local v10    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v29    # "declaredFields":[Ljava/lang/reflect/Field;
    :cond_1b
    move-object/from16 v35, v6

    move-object/from16 v36, v7

    move-object/from16 v39, v9

    move-object v12, v10

    move-object/from16 v37, v29

    const/16 v19, 0x1

    const/16 v27, 0x0

    .end local v6    # "methodName":Ljava/lang/String;
    .end local v7    # "method":Ljava/lang/reflect/Method;
    .end local v9    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .end local v10    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v29    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v12    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v35    # "methodName":Ljava/lang/String;
    .restart local v36    # "method":Ljava/lang/reflect/Method;
    .restart local v37    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v39    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    move/from16 v4, v18

    goto :goto_d

    .line 1103
    .end local v12    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v35    # "methodName":Ljava/lang/String;
    .end local v36    # "method":Ljava/lang/reflect/Method;
    .end local v37    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v39    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .restart local v6    # "methodName":Ljava/lang/String;
    .restart local v7    # "method":Ljava/lang/reflect/Method;
    .restart local v9    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .restart local v10    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v29    # "declaredFields":[Ljava/lang/reflect/Field;
    :cond_1c
    move-object/from16 v35, v6

    move-object/from16 v36, v7

    move-object/from16 v39, v9

    move-object v12, v10

    move-object/from16 v37, v29

    const/16 v19, 0x1

    const/16 v27, 0x0

    .end local v6    # "methodName":Ljava/lang/String;
    .end local v7    # "method":Ljava/lang/reflect/Method;
    .end local v9    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .end local v10    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v29    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v12    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v35    # "methodName":Ljava/lang/String;
    .restart local v36    # "method":Ljava/lang/reflect/Method;
    .restart local v37    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v39    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    move/from16 v4, v18

    .line 1129
    .end local v18    # "ordinal":I
    .restart local v4    # "ordinal":I
    :goto_d
    move-object/from16 v10, v35

    .end local v35    # "methodName":Ljava/lang/String;
    .local v10, "methodName":Ljava/lang/String;
    invoke-virtual {v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/16 v9, 0x66

    const/16 v8, 0x5f

    if-eqz v1, :cond_2f

    .line 1130
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_2e

    .line 1131
    const-string v1, "getClass"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1133
    move-object v14, v12

    move-object/from16 v43, v37

    move-object/from16 v34, v39

    move/from16 v12, p1

    goto/16 :goto_19

    .line 1136
    :cond_1d
    const/4 v1, 0x3

    invoke-virtual {v10, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 1139
    .local v7, "c3":C
    invoke-static {v7}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1140
    sget-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    if-eqz v3, :cond_1e

    .line 1141
    invoke-virtual {v10, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    .local v2, "propertyName":Ljava/lang/String;
    goto :goto_e

    .line 1143
    .end local v2    # "propertyName":Ljava/lang/String;
    :cond_1e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    .restart local v2    # "propertyName":Ljava/lang/String;
    goto :goto_e

    .line 1145
    .end local v2    # "propertyName":Ljava/lang/String;
    :cond_1f
    if-ne v7, v8, :cond_20

    .line 1146
    invoke-virtual {v10, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    .restart local v2    # "propertyName":Ljava/lang/String;
    goto :goto_e

    .line 1147
    .end local v2    # "propertyName":Ljava/lang/String;
    :cond_20
    if-ne v7, v9, :cond_21

    .line 1148
    const/4 v5, 0x3

    invoke-virtual {v10, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "propertyName":Ljava/lang/String;
    goto :goto_e

    .line 1149
    .end local v2    # "propertyName":Ljava/lang/String;
    :cond_21
    const/4 v5, 0x3

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x5

    if-lt v1, v3, :cond_2d

    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1150
    invoke-virtual {v10, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1155
    .restart local v2    # "propertyName":Ljava/lang/String;
    :goto_e
    invoke-static {v11, v13, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->isJSONTypeIgnore(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1156
    move-object v14, v12

    move-object/from16 v43, v37

    move-object/from16 v34, v39

    move/from16 v12, p1

    goto/16 :goto_19

    .line 1159
    :cond_22
    move-object/from16 v3, v37

    move-object/from16 v6, v39

    .end local v37    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v39    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .local v3, "declaredFields":[Ljava/lang/reflect/Field;
    .local v6, "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    invoke-static {v11, v2, v3, v6}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1160
    .local v1, "field":Ljava/lang/reflect/Field;
    const/16 v18, 0x0

    .line 1161
    .local v18, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v1, :cond_29

    .line 1162
    if-eqz p6, :cond_23

    const-class v5, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/alibaba/fastjson/annotation/JSONField;

    goto :goto_f

    :cond_23
    move-object/from16 v5, v16

    :goto_f
    move-object/from16 v18, v5

    .line 1164
    if-eqz v18, :cond_28

    .line 1165
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/annotation/JSONField;->serialize()Z

    move-result v5

    if-nez v5, :cond_24

    .line 1166
    move-object/from16 v43, v3

    move-object/from16 v34, v6

    move-object v14, v12

    move/from16 v12, p1

    goto/16 :goto_19

    .line 1169
    :cond_24
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v4

    .line 1170
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v5

    .line 1172
    .end local v21    # "serialzeFeatures":I
    .local v5, "serialzeFeatures":I
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    if-eqz v21, :cond_27

    .line 1173
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v2

    .line 1174
    const/4 v0, 0x1

    .line 1176
    if-eqz v14, :cond_26

    .line 1177
    invoke-interface {v14, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v2, v21

    check-cast v2, Ljava/lang/String;

    .line 1178
    if-nez v2, :cond_25

    .line 1179
    move-object/from16 v43, v3

    move-object/from16 v34, v6

    move-object v14, v12

    move/from16 v12, p1

    goto/16 :goto_19

    .line 1178
    :cond_25
    move/from16 v21, v4

    move/from16 v29, v5

    move-object/from16 v23, v18

    move/from16 v18, v0

    goto :goto_10

    .line 1176
    :cond_26
    move/from16 v21, v4

    move/from16 v29, v5

    move-object/from16 v23, v18

    move/from16 v18, v0

    goto :goto_10

    .line 1172
    :cond_27
    move/from16 v21, v4

    move/from16 v29, v5

    move-object/from16 v23, v18

    move/from16 v18, v0

    goto :goto_10

    .line 1164
    .end local v5    # "serialzeFeatures":I
    .restart local v21    # "serialzeFeatures":I
    :cond_28
    move-object/from16 v23, v18

    move/from16 v29, v21

    move/from16 v18, v0

    move/from16 v21, v4

    goto :goto_10

    .line 1161
    :cond_29
    move-object/from16 v23, v18

    move/from16 v29, v21

    move/from16 v18, v0

    move/from16 v21, v4

    .line 1186
    .end local v0    # "fieldAnnotationExists":Z
    .end local v4    # "ordinal":I
    .local v18, "fieldAnnotationExists":Z
    .local v21, "ordinal":I
    .local v23, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v29, "serialzeFeatures":I
    :goto_10
    if-eqz v15, :cond_2a

    if-nez v18, :cond_2a

    .line 1187
    invoke-virtual {v15, v2}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1190
    :cond_2a
    if-eqz v14, :cond_2c

    .line 1191
    invoke-interface {v14, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 1192
    if-nez v2, :cond_2b

    .line 1193
    move-object/from16 v43, v3

    move-object/from16 v34, v6

    move-object v14, v12

    move/from16 v12, p1

    goto/16 :goto_19

    .line 1192
    :cond_2b
    move-object v5, v2

    goto :goto_11

    .line 1190
    :cond_2c
    move-object v5, v2

    .line 1197
    .end local v2    # "propertyName":Ljava/lang/String;
    .local v5, "propertyName":Ljava/lang/String;
    :goto_11
    move-object v4, v12

    move-object/from16 v2, v36

    move/from16 v12, p1

    .end local v12    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v36    # "method":Ljava/lang/reflect/Method;
    .local v2, "method":Ljava/lang/reflect/Method;
    .local v4, "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    invoke-static {v11, v2, v12}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 1198
    new-instance v0, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v31, 0x0

    move-object/from16 v33, v0

    move-object/from16 v34, v1

    .end local v1    # "field":Ljava/lang/reflect/Field;
    .local v34, "field":Ljava/lang/reflect/Field;
    move-object v1, v5

    .end local v2    # "method":Ljava/lang/reflect/Method;
    .restart local v36    # "method":Ljava/lang/reflect/Method;
    move-object/from16 v40, v3

    .end local v3    # "declaredFields":[Ljava/lang/reflect/Field;
    .local v40, "declaredFields":[Ljava/lang/reflect/Field;
    move-object/from16 v3, v34

    move-object v12, v4

    .end local v4    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v12    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    move-object/from16 v4, p0

    move-object v15, v5

    const/4 v14, 0x3

    .end local v5    # "propertyName":Ljava/lang/String;
    .local v15, "propertyName":Ljava/lang/String;
    move-object/from16 v5, v31

    move-object/from16 v41, v6

    .end local v6    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .local v41, "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    move/from16 v6, v21

    move/from16 v25, v7

    .end local v7    # "c3":C
    .local v25, "c3":C
    move/from16 v7, v29

    move-object/from16 v8, v30

    move-object/from16 v9, v23

    move-object v14, v10

    .end local v10    # "methodName":Ljava/lang/String;
    .local v14, "methodName":Ljava/lang/String;
    move/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    invoke-interface {v12, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v4, v21

    move/from16 v21, v29

    goto :goto_12

    .line 1149
    .end local v14    # "methodName":Ljava/lang/String;
    .end local v15    # "propertyName":Ljava/lang/String;
    .end local v18    # "fieldAnnotationExists":Z
    .end local v23    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v25    # "c3":C
    .end local v29    # "serialzeFeatures":I
    .end local v34    # "field":Ljava/lang/reflect/Field;
    .end local v40    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v41    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .restart local v0    # "fieldAnnotationExists":Z
    .local v4, "ordinal":I
    .restart local v7    # "c3":C
    .restart local v10    # "methodName":Ljava/lang/String;
    .local v21, "serialzeFeatures":I
    .restart local v37    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v39    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    :cond_2d
    move/from16 v25, v7

    move-object v14, v10

    move-object/from16 v40, v37

    move-object/from16 v41, v39

    .end local v7    # "c3":C
    .end local v10    # "methodName":Ljava/lang/String;
    .end local v37    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v39    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .restart local v14    # "methodName":Ljava/lang/String;
    .restart local v25    # "c3":C
    .restart local v40    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v41    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    move-object v14, v12

    move-object/from16 v43, v40

    move-object/from16 v34, v41

    move/from16 v12, p1

    goto/16 :goto_19

    .line 1130
    .end local v14    # "methodName":Ljava/lang/String;
    .end local v25    # "c3":C
    .end local v40    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v41    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .restart local v10    # "methodName":Ljava/lang/String;
    .restart local v37    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v39    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    :cond_2e
    move-object v14, v10

    move-object/from16 v40, v37

    move-object/from16 v41, v39

    .end local v10    # "methodName":Ljava/lang/String;
    .end local v37    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v39    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .restart local v14    # "methodName":Ljava/lang/String;
    .restart local v40    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v41    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    move-object v14, v12

    move-object/from16 v43, v40

    move-object/from16 v34, v41

    move/from16 v12, p1

    goto/16 :goto_19

    .line 1129
    .end local v14    # "methodName":Ljava/lang/String;
    .end local v40    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v41    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .restart local v10    # "methodName":Ljava/lang/String;
    .restart local v37    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v39    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    :cond_2f
    move-object v14, v10

    move-object/from16 v40, v37

    move-object/from16 v41, v39

    .end local v10    # "methodName":Ljava/lang/String;
    .end local v37    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v39    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .restart local v14    # "methodName":Ljava/lang/String;
    .restart local v40    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v41    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    move/from16 v18, v0

    .line 1203
    .end local v0    # "fieldAnnotationExists":Z
    .restart local v18    # "fieldAnnotationExists":Z
    :goto_12
    const-string v0, "is"

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1204
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_30

    .line 1205
    move-object v14, v12

    move-object/from16 v43, v40

    move-object/from16 v34, v41

    move/from16 v12, p1

    goto/16 :goto_19

    .line 1208
    :cond_30
    const/4 v0, 0x2

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v15

    .line 1211
    .local v15, "c2":C
    invoke-static {v15}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 1212
    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    if-eqz v1, :cond_31

    .line 1213
    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "propertyName":Ljava/lang/String;
    goto :goto_13

    .line 1215
    .end local v0    # "propertyName":Ljava/lang/String;
    :cond_31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    invoke-virtual {v14, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "propertyName":Ljava/lang/String;
    goto :goto_13

    .line 1217
    .end local v0    # "propertyName":Ljava/lang/String;
    :cond_32
    const/4 v2, 0x3

    const/16 v1, 0x5f

    if-ne v15, v1, :cond_33

    .line 1218
    invoke-virtual {v14, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "propertyName":Ljava/lang/String;
    goto :goto_13

    .line 1219
    .end local v0    # "propertyName":Ljava/lang/String;
    :cond_33
    const/16 v1, 0x66

    if-ne v15, v1, :cond_40

    .line 1220
    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1225
    .restart local v0    # "propertyName":Ljava/lang/String;
    :goto_13
    invoke-static {v11, v13, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->isJSONTypeIgnore(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1226
    move-object v14, v12

    move-object/from16 v43, v40

    move-object/from16 v34, v41

    move/from16 v12, p1

    goto/16 :goto_19

    .line 1229
    :cond_34
    move-object/from16 v9, v40

    move-object/from16 v10, v41

    .end local v40    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v41    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .local v9, "declaredFields":[Ljava/lang/reflect/Field;
    .local v10, "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    invoke-static {v11, v0, v9, v10}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1231
    .restart local v1    # "field":Ljava/lang/reflect/Field;
    if-nez v1, :cond_35

    .line 1232
    invoke-static {v11, v14, v9, v10}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v1

    move-object v8, v1

    goto :goto_14

    .line 1231
    :cond_35
    move-object v8, v1

    .line 1235
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .local v8, "field":Ljava/lang/reflect/Field;
    :goto_14
    const/4 v1, 0x0

    .line 1236
    .local v1, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v8, :cond_3c

    .line 1237
    if-eqz p6, :cond_36

    const-class v2, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v8, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/annotation/JSONField;

    goto :goto_15

    :cond_36
    move-object/from16 v2, v16

    :goto_15
    move-object v1, v2

    .line 1239
    if-eqz v1, :cond_3b

    .line 1240
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->serialize()Z

    move-result v2

    if-nez v2, :cond_37

    .line 1241
    move-object/from16 v43, v9

    move-object/from16 v34, v10

    move-object v14, v12

    move/from16 v12, p1

    goto/16 :goto_19

    .line 1244
    :cond_37
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v4

    .line 1245
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v21

    .line 1247
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3a

    .line 1248
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v0

    .line 1250
    move-object/from16 v7, p4

    if-eqz v7, :cond_39

    .line 1251
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    .line 1252
    if-nez v0, :cond_38

    .line 1253
    move-object/from16 v43, v9

    move-object/from16 v34, v10

    move-object v14, v12

    move/from16 v12, p1

    goto/16 :goto_19

    .line 1252
    :cond_38
    move/from16 v23, v4

    move/from16 v25, v21

    move-object/from16 v21, v1

    goto :goto_16

    .line 1250
    :cond_39
    move/from16 v23, v4

    move/from16 v25, v21

    move-object/from16 v21, v1

    goto :goto_16

    .line 1247
    :cond_3a
    move-object/from16 v7, p4

    move/from16 v23, v4

    move/from16 v25, v21

    move-object/from16 v21, v1

    goto :goto_16

    .line 1239
    :cond_3b
    move-object/from16 v7, p4

    move/from16 v23, v4

    move/from16 v25, v21

    move-object/from16 v21, v1

    goto :goto_16

    .line 1236
    :cond_3c
    move-object/from16 v7, p4

    move/from16 v23, v4

    move/from16 v25, v21

    move-object/from16 v21, v1

    .line 1260
    .end local v1    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v4    # "ordinal":I
    .local v21, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v23, "ordinal":I
    .local v25, "serialzeFeatures":I
    :goto_16
    move-object/from16 v6, p8

    if-eqz v6, :cond_3d

    .line 1261
    invoke-virtual {v6, v0}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1264
    :cond_3d
    if-eqz v7, :cond_3f

    .line 1265
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 1266
    if-nez v0, :cond_3e

    .line 1267
    move-object/from16 v43, v9

    move-object/from16 v34, v10

    move-object v14, v12

    move/from16 v12, p1

    goto/16 :goto_19

    .line 1266
    :cond_3e
    move-object v5, v0

    goto :goto_17

    .line 1264
    :cond_3f
    move-object v5, v0

    .line 1271
    .end local v0    # "propertyName":Ljava/lang/String;
    .restart local v5    # "propertyName":Ljava/lang/String;
    :goto_17
    move-object v4, v12

    move/from16 v12, p1

    .end local v12    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v4, "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    invoke-static {v11, v8, v12}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 1272
    move-object/from16 v3, v36

    .end local v36    # "method":Ljava/lang/reflect/Method;
    .local v3, "method":Ljava/lang/reflect/Method;
    invoke-static {v11, v3, v12}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 1273
    new-instance v2, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v29, 0x0

    move-object v0, v2

    move-object v1, v5

    move-object/from16 v42, v2

    move-object v2, v3

    move-object/from16 v31, v3

    .end local v3    # "method":Ljava/lang/reflect/Method;
    .local v31, "method":Ljava/lang/reflect/Method;
    move-object v3, v8

    move-object/from16 v35, v14

    move-object v14, v4

    .end local v4    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v14, "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v35    # "methodName":Ljava/lang/String;
    move-object/from16 v4, p0

    move/from16 v33, v15

    move-object v15, v5

    .end local v5    # "propertyName":Ljava/lang/String;
    .local v15, "propertyName":Ljava/lang/String;
    .local v33, "c2":C
    move-object/from16 v5, v29

    move/from16 v6, v23

    move/from16 v7, v25

    move-object/from16 v29, v8

    .end local v8    # "field":Ljava/lang/reflect/Field;
    .local v29, "field":Ljava/lang/reflect/Field;
    move-object/from16 v8, v30

    move-object/from16 v43, v9

    .end local v9    # "declaredFields":[Ljava/lang/reflect/Field;
    .local v43, "declaredFields":[Ljava/lang/reflect/Field;
    move-object/from16 v9, v21

    move-object/from16 v34, v10

    .end local v10    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .local v34, "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    move/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    move-object/from16 v0, v42

    invoke-interface {v14, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    .line 1219
    .end local v23    # "ordinal":I
    .end local v25    # "serialzeFeatures":I
    .end local v29    # "field":Ljava/lang/reflect/Field;
    .end local v31    # "method":Ljava/lang/reflect/Method;
    .end local v33    # "c2":C
    .end local v34    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .end local v35    # "methodName":Ljava/lang/String;
    .end local v43    # "declaredFields":[Ljava/lang/reflect/Field;
    .local v4, "ordinal":I
    .restart local v12    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v14, "methodName":Ljava/lang/String;
    .local v15, "c2":C
    .local v21, "serialzeFeatures":I
    .restart local v36    # "method":Ljava/lang/reflect/Method;
    .restart local v40    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v41    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    :cond_40
    move-object/from16 v35, v14

    move/from16 v33, v15

    move-object/from16 v31, v36

    move-object/from16 v43, v40

    move-object/from16 v34, v41

    move-object v14, v12

    move/from16 v12, p1

    .end local v12    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v15    # "c2":C
    .end local v36    # "method":Ljava/lang/reflect/Method;
    .end local v40    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v41    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .local v14, "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v31    # "method":Ljava/lang/reflect/Method;
    .restart local v33    # "c2":C
    .restart local v34    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .restart local v35    # "methodName":Ljava/lang/String;
    .restart local v43    # "declaredFields":[Ljava/lang/reflect/Field;
    goto :goto_19

    .line 1203
    .end local v31    # "method":Ljava/lang/reflect/Method;
    .end local v33    # "c2":C
    .end local v34    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .end local v35    # "methodName":Ljava/lang/String;
    .end local v43    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v12    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v14, "methodName":Ljava/lang/String;
    .restart local v36    # "method":Ljava/lang/reflect/Method;
    .restart local v40    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v41    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    :cond_41
    move-object/from16 v35, v14

    move-object/from16 v31, v36

    move-object/from16 v43, v40

    move-object/from16 v34, v41

    move-object v14, v12

    move/from16 v12, p1

    .line 1277
    .end local v4    # "ordinal":I
    .end local v12    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v18    # "fieldAnnotationExists":Z
    .end local v21    # "serialzeFeatures":I
    .end local v30    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v36    # "method":Ljava/lang/reflect/Method;
    .end local v40    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v41    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .local v14, "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v34    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .restart local v43    # "declaredFields":[Ljava/lang/reflect/Field;
    :goto_18
    nop

    .line 1035
    .end local v14    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v34    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .end local v43    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v12    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v40    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v41    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    :goto_19
    move-object/from16 v15, p8

    move-object v10, v14

    move-object/from16 v0, v22

    move-object/from16 v5, v24

    move-object/from16 v3, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v32

    move-object/from16 v9, v34

    move-object/from16 v8, v43

    move-object/from16 v14, p4

    .end local v12    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v40    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v41    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .restart local v14    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v34    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .restart local v43    # "declaredFields":[Ljava/lang/reflect/Field;
    goto/16 :goto_3

    .end local v14    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v22    # "constructors":[Ljava/lang/reflect/Constructor;
    .end local v24    # "methodList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    .end local v26    # "paramNameMapping":[S
    .end local v28    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v32    # "paramNames":[Ljava/lang/String;
    .end local v34    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .end local v43    # "declaredFields":[Ljava/lang/reflect/Field;
    .local v0, "constructors":[Ljava/lang/reflect/Constructor;
    .local v1, "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .local v2, "paramNames":[Ljava/lang/String;
    .local v3, "paramNameMapping":[S
    .local v5, "methodList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    .local v8, "declaredFields":[Ljava/lang/reflect/Field;
    .local v9, "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .local v10, "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    :cond_42
    move-object/from16 v22, v1

    move-object/from16 v23, v2

    move-object/from16 v26, v3

    move-object/from16 v24, v5

    move-object/from16 v43, v8

    move-object/from16 v34, v9

    move-object v14, v10

    const/16 v19, 0x1

    const/16 v27, 0x0

    .end local v1    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v2    # "paramNames":[Ljava/lang/String;
    .end local v3    # "paramNameMapping":[S
    .end local v5    # "methodList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    .end local v8    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v9    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .end local v10    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v14    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v22, "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .local v23, "paramNames":[Ljava/lang/String;
    .restart local v24    # "methodList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    .restart local v26    # "paramNameMapping":[S
    .restart local v34    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .restart local v43    # "declaredFields":[Ljava/lang/reflect/Field;
    goto :goto_1a

    .line 1000
    .end local v0    # "constructors":[Ljava/lang/reflect/Constructor;
    .end local v14    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v17    # "kotlin":Z
    .end local v22    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v23    # "paramNames":[Ljava/lang/String;
    .end local v24    # "methodList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    .end local v26    # "paramNameMapping":[S
    .end local v34    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .end local v43    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v8    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v9    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .restart local v10    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    :cond_43
    move-object/from16 v43, v8

    move-object/from16 v34, v9

    move-object v14, v10

    const/16 v19, 0x1

    const/16 v27, 0x0

    .line 1282
    .end local v8    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v9    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .end local v10    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v14    # "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v34    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .restart local v43    # "declaredFields":[Ljava/lang/reflect/Field;
    :goto_1a
    new-instance v0, Ljava/util/ArrayList;

    move-object/from16 v15, v43

    .end local v43    # "declaredFields":[Ljava/lang/reflect/Field;
    .local v15, "declaredFields":[Ljava/lang/reflect/Field;
    array-length v1, v15

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v10, v0

    .line 1283
    .local v10, "classfields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    array-length v0, v15

    const/4 v7, 0x0

    :goto_1b
    if-ge v7, v0, :cond_47

    aget-object v1, v15, v7

    .line 1284
    .local v1, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_44

    .line 1285
    goto :goto_1c

    .line 1288
    :cond_44
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "this$0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 1289
    goto :goto_1c

    .line 1292
    :cond_45
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_46

    .line 1293
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1283
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :cond_46
    :goto_1c
    add-int/lit8 v7, v7, 0x1

    goto :goto_1b

    .line 1297
    :cond_47
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1d
    if-eqz v0, :cond_4b

    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_4b

    .line 1298
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v7, 0x0

    :goto_1e
    if-ge v7, v2, :cond_4a

    aget-object v3, v1, v7

    .line 1299
    .local v3, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_48

    .line 1300
    goto :goto_1f

    .line 1303
    :cond_48
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_49

    .line 1304
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1298
    .end local v3    # "f":Ljava/lang/reflect/Field;
    :cond_49
    :goto_1f
    add-int/lit8 v7, v7, 0x1

    goto :goto_1e

    .line 1297
    :cond_4a
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1d

    .line 1310
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4b
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_20
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/reflect/Field;

    .line 1311
    .local v9, "field":Ljava/lang/reflect/Field;
    if-eqz p6, :cond_4c

    const-class v0, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONField;

    goto :goto_21

    :cond_4c
    move-object/from16 v0, v16

    :goto_21
    move-object/from16 v18, v0

    .line 1313
    .local v18, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    const/4 v0, 0x0

    .local v0, "ordinal":I
    const/4 v1, 0x0

    .line 1314
    .local v1, "serialzeFeatures":I
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1315
    .local v2, "propertyName":Ljava/lang/String;
    if-eqz v18, :cond_4f

    .line 1316
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/annotation/JSONField;->serialize()Z

    move-result v3

    if-nez v3, :cond_4d

    .line 1317
    goto :goto_20

    .line 1320
    :cond_4d
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v0

    .line 1321
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v1

    .line 1323
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4e

    .line 1324
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v2

    move/from16 v19, v0

    move/from16 v20, v1

    goto :goto_22

    .line 1323
    :cond_4e
    move/from16 v19, v0

    move/from16 v20, v1

    goto :goto_22

    .line 1315
    :cond_4f
    move/from16 v19, v0

    move/from16 v20, v1

    .line 1328
    .end local v0    # "ordinal":I
    .end local v1    # "serialzeFeatures":I
    .local v19, "ordinal":I
    .local v20, "serialzeFeatures":I
    :goto_22
    move-object/from16 v8, p4

    if-eqz v8, :cond_50

    .line 1329
    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 1330
    if-nez v2, :cond_50

    .line 1331
    goto :goto_20

    .line 1335
    :cond_50
    move-object/from16 v7, p8

    if-eqz v7, :cond_51

    .line 1336
    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto :goto_23

    .line 1335
    :cond_51
    move-object v6, v2

    .line 1339
    .end local v2    # "propertyName":Ljava/lang/String;
    .local v6, "propertyName":Ljava/lang/String;
    :goto_23
    invoke-interface {v14, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    .line 1340
    invoke-static {v11, v9, v12}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 1341
    new-instance v5, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v2, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object v3, v9

    move-object/from16 v4, p0

    move-object/from16 v44, v5

    move-object/from16 v5, v21

    move-object/from16 v45, v6

    .end local v6    # "propertyName":Ljava/lang/String;
    .local v45, "propertyName":Ljava/lang/String;
    move/from16 v6, v19

    move/from16 v7, v20

    move-object/from16 v8, v22

    move-object/from16 v21, v9

    .end local v9    # "field":Ljava/lang/reflect/Field;
    .local v21, "field":Ljava/lang/reflect/Field;
    move-object/from16 v9, v18

    move-object/from16 v22, v10

    .end local v10    # "classfields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .local v22, "classfields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    move/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    move-object/from16 v0, v44

    move-object/from16 v2, v45

    .end local v45    # "propertyName":Ljava/lang/String;
    .restart local v2    # "propertyName":Ljava/lang/String;
    invoke-interface {v14, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_24

    .line 1339
    .end local v2    # "propertyName":Ljava/lang/String;
    .end local v21    # "field":Ljava/lang/reflect/Field;
    .end local v22    # "classfields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .restart local v6    # "propertyName":Ljava/lang/String;
    .restart local v9    # "field":Ljava/lang/reflect/Field;
    .restart local v10    # "classfields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    :cond_52
    move-object v2, v6

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    .line 1353
    .end local v6    # "propertyName":Ljava/lang/String;
    .end local v9    # "field":Ljava/lang/reflect/Field;
    .end local v10    # "classfields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .end local v18    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v19    # "ordinal":I
    .end local v20    # "serialzeFeatures":I
    .restart local v22    # "classfields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    :goto_24
    move-object/from16 v10, v22

    goto/16 :goto_20

    .line 1355
    .end local v22    # "classfields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .restart local v10    # "classfields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    :cond_53
    move-object/from16 v22, v10

    .end local v10    # "classfields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .restart local v22    # "classfields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1357
    .local v0, "fieldInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    const/4 v1, 0x0

    .line 1358
    .local v1, "containsAll":Z
    const/4 v2, 0x0

    .line 1360
    .local v2, "orders":[Ljava/lang/String;
    if-eqz v13, :cond_57

    .line 1361
    invoke-interface/range {p3 .. p3}, Lcom/alibaba/fastjson/annotation/JSONType;->orders()[Ljava/lang/String;

    move-result-object v2

    .line 1363
    if-eqz v2, :cond_56

    array-length v3, v2

    invoke-interface {v14}, Ljava/util/Map;->size()I

    move-result v4

    if-ne v3, v4, :cond_56

    .line 1364
    const/4 v1, 0x1

    .line 1365
    array-length v3, v2

    const/4 v7, 0x0

    :goto_25
    if-ge v7, v3, :cond_55

    aget-object v4, v2, v7

    .line 1366
    .local v4, "item":Ljava/lang/String;
    invoke-interface {v14, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_54

    .line 1367
    const/4 v1, 0x0

    .line 1368
    goto :goto_26

    .line 1365
    .end local v4    # "item":Ljava/lang/String;
    :cond_54
    add-int/lit8 v7, v7, 0x1

    goto :goto_25

    :cond_55
    :goto_26
    goto :goto_27

    .line 1372
    :cond_56
    const/4 v1, 0x0

    .line 1376
    :cond_57
    :goto_27
    if-eqz v1, :cond_58

    .line 1377
    array-length v3, v2

    const/4 v7, 0x0

    :goto_28
    if-ge v7, v3, :cond_5a

    aget-object v4, v2, v7

    .line 1378
    .restart local v4    # "item":Ljava/lang/String;
    invoke-interface {v14, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1379
    .local v5, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1377
    .end local v4    # "item":Ljava/lang/String;
    .end local v5    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    add-int/lit8 v7, v7, 0x1

    goto :goto_28

    .line 1382
    :cond_58
    invoke-interface {v14}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_59

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1383
    .local v4, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1384
    .end local v4    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    goto :goto_29

    .line 1386
    :cond_59
    if-eqz p5, :cond_5a

    .line 1387
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1391
    :cond_5a
    return-object v0
.end method

.method public static decapitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 1525
    if-eqz p0, :cond_1

    .line 1526
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1527
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1528
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1533
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1534
    .local v0, "chars":[C
    aget-char v1, v0, v2

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    aput-char v1, v0, v2

    .line 1535
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1

    .line 1530
    .end local v0    # "chars":[C
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static defaultValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1649
    .local p0, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 1650
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 1651
    :cond_0
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    .line 1652
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    .line 1653
    :cond_1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    .line 1654
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1655
    :cond_2
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    .line 1656
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 1657
    :cond_3
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    .line 1658
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 1659
    :cond_4
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    .line 1660
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 1661
    :cond_5
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    .line 1662
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 1663
    :cond_6
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    .line 1664
    const/16 v0, 0x30

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0

    .line 1666
    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public static fnv_64_lower(Ljava/lang/String;)J
    .locals 6
    .param p0, "key"    # Ljava/lang/String;

    .line 1699
    const-wide v0, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 1700
    .local v0, "hashCode":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1701
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1702
    .local v3, "ch":C
    const/16 v4, 0x5f

    if-eq v3, v4, :cond_2

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_0

    .line 1703
    goto :goto_1

    .line 1706
    :cond_0
    const/16 v4, 0x41

    if-lt v3, v4, :cond_1

    const/16 v4, 0x5a

    if-gt v3, v4, :cond_1

    .line 1707
    add-int/lit8 v4, v3, 0x20

    int-to-char v3, v4

    .line 1710
    :cond_1
    int-to-long v4, v3

    xor-long/2addr v0, v4

    .line 1711
    const-wide v4, 0x100000001b3L

    mul-long v0, v0, v4

    .line 1700
    .end local v3    # "ch":C
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1714
    .end local v2    # "i":I
    :cond_3
    return-wide v0
.end method

.method public static getArgument([Ljava/lang/reflect/Type;[Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)Z
    .locals 9
    .param p0, "typeArgs"    # [Ljava/lang/reflect/Type;
    .param p1, "typeVariables"    # [Ljava/lang/reflect/TypeVariable;
    .param p2, "arguments"    # [Ljava/lang/reflect/Type;

    .line 1670
    if-eqz p2, :cond_6

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_3

    .line 1674
    :cond_0
    const/4 v0, 0x0

    .line 1675
    .local v0, "changed":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_5

    .line 1676
    aget-object v2, p0, v1

    .line 1677
    .local v2, "typeArg":Ljava/lang/reflect/Type;
    instance-of v3, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_1

    .line 1678
    move-object v3, v2

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    .line 1679
    .local v3, "p_typeArg":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 1680
    .local v4, "p_typeArg_args":[Ljava/lang/reflect/Type;
    invoke-static {v4, p1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->getArgument([Ljava/lang/reflect/Type;[Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)Z

    move-result v5

    .line 1681
    .local v5, "p_changed":Z
    if-eqz v5, :cond_3

    .line 1682
    new-instance v6, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v7

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v8

    invoke-direct {v6, v4, v7, v8}, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    aput-object v6, p0, v1

    .line 1683
    const/4 v0, 0x1

    goto :goto_2

    .line 1685
    .end local v3    # "p_typeArg":Ljava/lang/reflect/ParameterizedType;
    .end local v4    # "p_typeArg_args":[Ljava/lang/reflect/Type;
    .end local v5    # "p_changed":Z
    :cond_1
    instance-of v3, v2, Ljava/lang/reflect/TypeVariable;

    if-eqz v3, :cond_3

    .line 1686
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v4, p1

    if-ge v3, v4, :cond_4

    .line 1687
    aget-object v4, p1, v3

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1688
    aget-object v4, p2, v3

    aput-object v4, p0, v1

    .line 1689
    const/4 v0, 0x1

    .line 1686
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1685
    .end local v3    # "j":I
    :cond_3
    :goto_2
    nop

    .line 1675
    .end local v2    # "typeArg":Ljava/lang/reflect/Type;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1695
    .end local v1    # "i":I
    :cond_5
    return v0

    .line 1671
    .end local v0    # "changed":Z
    :cond_6
    :goto_3
    const/4 v0, 0x0

    return v0
.end method

.method public static getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 4
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1502
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    .line 1503
    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    return-object v0

    .line 1506
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 1507
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 1510
    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1511
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Class;

    return-object v0

    .line 1514
    :cond_2
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_3

    .line 1515
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1516
    .local v0, "upperBounds":[Ljava/lang/reflect/Type;
    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 1517
    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    return-object v1

    .line 1521
    .end local v0    # "upperBounds":[Ljava/lang/reflect/Type;
    :cond_3
    const-class v0, Ljava/lang/Object;

    return-object v0
.end method

.method public static getClassFromMapping(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 906
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public static getCollectionItemType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 8
    .param p0, "fieldType"    # Ljava/lang/reflect/Type;

    .line 1621
    const/4 v0, 0x0

    .line 1622
    .local v0, "itemType":Ljava/lang/reflect/Type;
    const/4 v1, 0x0

    .line 1623
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    instance-of v2, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_1

    .line 1624
    move-object v2, p0

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 1626
    .local v2, "actualTypeArgument":Ljava/lang/reflect/Type;
    instance-of v4, v2, Ljava/lang/reflect/WildcardType;

    if-eqz v4, :cond_0

    .line 1627
    move-object v4, v2

    check-cast v4, Ljava/lang/reflect/WildcardType;

    .line 1628
    .local v4, "wildcardType":Ljava/lang/reflect/WildcardType;
    invoke-interface {v4}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v5

    .line 1629
    .local v5, "upperBounds":[Ljava/lang/reflect/Type;
    array-length v6, v5

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 1630
    aget-object v2, v5, v3

    .line 1634
    .end local v4    # "wildcardType":Ljava/lang/reflect/WildcardType;
    .end local v5    # "upperBounds":[Ljava/lang/reflect/Type;
    :cond_0
    move-object v0, v2

    .line 1635
    .end local v2    # "actualTypeArgument":Ljava/lang/reflect/Type;
    goto :goto_0

    :cond_1
    instance-of v2, p0, Ljava/lang/Class;

    if-eqz v2, :cond_2

    move-object v2, p0

    check-cast v2, Ljava/lang/Class;

    move-object v1, v2

    .line 1636
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "java."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1637
    invoke-virtual {v1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 1638
    .local v2, "superClass":Ljava/lang/reflect/Type;
    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getCollectionItemType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1641
    .end local v2    # "superClass":Ljava/lang/reflect/Type;
    :cond_2
    :goto_0
    if-nez v0, :cond_3

    .line 1642
    const-class v0, Ljava/lang/Object;

    .line 1645
    :cond_3
    return-object v0
.end method

.method public static getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "declaredFields"    # [Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 1566
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method public static getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;
    .locals 4
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "declaredFields"    # [Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Field;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Field;",
            ">;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 1570
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson/util/TypeUtils;->getField0(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1571
    .local v0, "field":Ljava/lang/reflect/Field;
    if-nez v0, :cond_0

    .line 1572
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p2, p3}, Lcom/alibaba/fastjson/util/TypeUtils;->getField0(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1575
    :cond_0
    if-nez v0, :cond_1

    .line 1576
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "m_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p2, p3}, Lcom/alibaba/fastjson/util/TypeUtils;->getField0(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1579
    :cond_1
    if-nez v0, :cond_2

    .line 1580
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1581
    .local v1, "mName":Ljava/lang/String;
    invoke-static {p0, v1, p2, p3}, Lcom/alibaba/fastjson/util/TypeUtils;->getField0(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1584
    .end local v1    # "mName":Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method private static getField0(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;
    .locals 9
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "declaredFields"    # [Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Field;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Field;",
            ">;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 1588
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p2, v2

    .line 1589
    .local v3, "item":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1590
    .local v4, "itemName":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1591
    return-object v3

    .line 1595
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_1

    .line 1596
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v6, v5

    .local v6, "c0":C
    const/16 v7, 0x61

    if-lt v5, v7, :cond_1

    const/16 v5, 0x7a

    if-gt v6, v5, :cond_1

    .line 1597
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v7, v5

    .local v7, "c1":C
    const/16 v8, 0x41

    if-lt v5, v8, :cond_1

    const/16 v5, 0x5a

    if-gt v7, v5, :cond_1

    .line 1598
    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1599
    return-object v3

    .line 1588
    .end local v3    # "item":Ljava/lang/reflect/Field;
    .end local v4    # "itemName":Ljava/lang/String;
    .end local v6    # "c0":C
    .end local v7    # "c1":C
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1603
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 1605
    .local v0, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const-class v2, Ljava/lang/Object;

    if-ne v0, v2, :cond_3

    goto :goto_1

    .line 1609
    :cond_3
    if-eqz p3, :cond_4

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Field;

    .line 1610
    .local v1, "superClassFields":[Ljava/lang/reflect/Field;
    :cond_4
    if-nez v1, :cond_5

    .line 1611
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1612
    if-eqz p3, :cond_5

    .line 1613
    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1617
    :cond_5
    invoke-static {v0, p1, v1, p3}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v2

    return-object v2

    .line 1606
    .end local v1    # "superClassFields":[Ljava/lang/reflect/Field;
    :cond_6
    :goto_1
    return-object v1
.end method

.method public static getGenericParamType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .line 1496
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    .line 1497
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getGenericParamType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 1496
    :goto_0
    return-object v0
.end method

.method public static getKoltinConstructorParameters(Ljava/lang/Class;)[Ljava/lang/String;
    .locals 12
    .param p0, "clazz"    # Ljava/lang/Class;

    .line 118
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_constructor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_class_klass_error:Z

    if-nez v0, :cond_0

    .line 120
    :try_start_0
    const-string v0, "kotlin.reflect.jvm.internal.KClassImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 121
    .local v0, "class_kotlin_kclass":Ljava/lang/Class;
    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Class;

    aput-object v4, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    sput-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_constructor:Ljava/lang/reflect/Constructor;

    .line 122
    const-string v3, "getConstructors"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_getConstructors:Ljava/lang/reflect/Method;

    .line 124
    const-string v3, "kotlin.reflect.KFunction"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 125
    .local v3, "class_kotlin_kfunction":Ljava/lang/Class;
    const-string v4, "getParameters"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kfunction_getParameters:Ljava/lang/reflect/Method;

    .line 127
    const-string v4, "kotlin.reflect.KParameter"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 128
    .local v4, "class_kotlinn_kparameter":Ljava/lang/Class;
    const-string v5, "getName"

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kparameter_getName:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    .end local v0    # "class_kotlin_kclass":Ljava/lang/Class;
    .end local v3    # "class_kotlin_kfunction":Ljava/lang/Class;
    .end local v4    # "class_kotlinn_kparameter":Ljava/lang/Class;
    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Throwable;
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_class_klass_error:Z

    .line 134
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_constructor:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 135
    return-object v3

    .line 138
    :cond_1
    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_error:Z

    if-eqz v0, :cond_2

    .line 139
    return-object v3

    .line 143
    :cond_2
    const/4 v0, 0x0

    .line 144
    .local v0, "constructor":Ljava/lang/Object;
    :try_start_1
    sget-object v4, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_constructor:Ljava/lang/reflect/Constructor;

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p0, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 145
    .local v4, "kclassImpl":Ljava/lang/Object;
    sget-object v5, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kclass_getConstructors:Ljava/lang/reflect/Method;

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    .line 146
    .local v5, "it":Ljava/lang/Iterable;
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 147
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 148
    .local v7, "item":Ljava/lang/Object;
    sget-object v8, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kfunction_getParameters:Ljava/lang/reflect/Method;

    new-array v9, v2, [Ljava/lang/Object;

    invoke-virtual {v8, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 149
    .local v8, "parameters":Ljava/util/List;
    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_3

    .line 150
    goto :goto_2

    .line 152
    :cond_3
    move-object v0, v7

    .line 146
    .end local v7    # "item":Ljava/lang/Object;
    .end local v8    # "parameters":Ljava/util/List;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    goto :goto_1

    .line 155
    .end local v6    # "iterator":Ljava/util/Iterator;
    :cond_4
    sget-object v6, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kfunction_getParameters:Ljava/lang/reflect/Method;

    new-array v7, v2, [Ljava/lang/Object;

    invoke-virtual {v6, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 156
    .local v6, "parameters":Ljava/util/List;
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    .line 157
    .local v7, "names":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_5

    .line 158
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 159
    .local v9, "param":Ljava/lang/Object;
    sget-object v10, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_kparameter_getName:Ljava/lang/reflect/Method;

    new-array v11, v2, [Ljava/lang/Object;

    invoke-virtual {v10, v9, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    aput-object v10, v7, v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 157
    .end local v9    # "param":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 161
    .end local v8    # "i":I
    :cond_5
    return-object v7

    .line 162
    .end local v0    # "constructor":Ljava/lang/Object;
    .end local v4    # "kclassImpl":Ljava/lang/Object;
    .end local v5    # "it":Ljava/lang/Iterable;
    .end local v6    # "parameters":Ljava/util/List;
    .end local v7    # "names":[Ljava/lang/String;
    :catchall_1
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Throwable;
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_error:Z

    .line 166
    .end local v0    # "e":Ljava/lang/Throwable;
    return-object v3
.end method

.method public static getSupperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;
    .locals 15
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lcom/alibaba/fastjson/annotation/JSONField;"
        }
    .end annotation

    .line 1395
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_7

    aget-object v4, v0, v3

    .line 1396
    .local v4, "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_6

    aget-object v8, v5, v7

    .line 1397
    .local v8, "interfaceMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1398
    goto :goto_4

    .line 1401
    :cond_0
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    .line 1402
    .local v9, "interfaceParameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    .line 1403
    .local v10, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v11, v9

    array-length v12, v10

    if-eq v11, v12, :cond_1

    .line 1404
    goto :goto_4

    .line 1407
    :cond_1
    const/4 v11, 0x1

    .line 1408
    .local v11, "match":Z
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    array-length v13, v9

    if-ge v12, v13, :cond_3

    .line 1409
    aget-object v13, v9, v12

    aget-object v14, v10, v12

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 1410
    const/4 v11, 0x0

    .line 1411
    goto :goto_3

    .line 1408
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1415
    .end local v12    # "i":I
    :cond_3
    :goto_3
    if-nez v11, :cond_4

    .line 1416
    goto :goto_4

    .line 1419
    :cond_4
    const-class v12, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v8, v12}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v12

    check-cast v12, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1420
    .local v12, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v12, :cond_5

    .line 1421
    return-object v12

    .line 1396
    .end local v8    # "interfaceMethod":Ljava/lang/reflect/Method;
    .end local v9    # "interfaceParameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v10    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v11    # "match":Z
    .end local v12    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_5
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1395
    .end local v4    # "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1426
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 1427
    .local v0, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1428
    return-object v1

    .line 1431
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1432
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 1434
    .local v3, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    :goto_5
    if-ge v2, v5, :cond_f

    aget-object v6, v4, v2

    .line 1435
    .local v6, "interfaceMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    .line 1436
    .local v7, "interfaceTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v8, v7

    array-length v9, v3

    if-eq v8, v9, :cond_9

    .line 1437
    goto :goto_8

    .line 1439
    :cond_9
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 1440
    goto :goto_8

    .line 1442
    :cond_a
    const/4 v8, 0x1

    .line 1443
    .local v8, "match":Z
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_6
    array-length v10, v3

    if-ge v9, v10, :cond_c

    .line 1444
    aget-object v10, v7, v9

    aget-object v11, v3, v9

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 1445
    const/4 v8, 0x0

    .line 1446
    goto :goto_7

    .line 1443
    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 1450
    .end local v9    # "i":I
    :cond_c
    :goto_7
    if-nez v8, :cond_d

    .line 1451
    goto :goto_8

    .line 1454
    :cond_d
    const-class v9, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v6, v9}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    check-cast v9, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1455
    .local v9, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v9, :cond_e

    .line 1456
    return-object v9

    .line 1434
    .end local v6    # "interfaceMethod":Ljava/lang/reflect/Method;
    .end local v7    # "interfaceTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v8    # "match":Z
    .end local v9    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_e
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1461
    .end local v3    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_f
    return-object v1
.end method

.method public static isGenericParamType(Ljava/lang/reflect/Type;)Z
    .locals 4
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .line 1482
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1483
    return v1

    .line 1486
    :cond_0
    instance-of v0, p0, Ljava/lang/Class;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1487
    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1488
    .local v0, "superType":Ljava/lang/reflect/Type;
    const-class v3, Ljava/lang/Object;

    if-eq v0, v3, :cond_1

    .line 1489
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->isGenericParamType(Ljava/lang/reflect/Type;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1488
    :goto_0
    return v1

    .line 1492
    .end local v0    # "superType":Ljava/lang/reflect/Type;
    :cond_2
    return v2
.end method

.method private static isJSONTypeIgnore(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/lang/String;)Z
    .locals 7
    .param p1, "jsonType"    # Lcom/alibaba/fastjson/annotation/JSONType;
    .param p2, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/annotation/JSONType;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 1465
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/alibaba/fastjson/annotation/JSONType;->ignores()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1466
    invoke-interface {p1}, Lcom/alibaba/fastjson/annotation/JSONType;->ignores()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 1467
    .local v5, "item":Ljava/lang/String;
    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1468
    return v1

    .line 1466
    .end local v5    # "item":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1473
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    .line 1474
    .local v2, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Ljava/lang/Object;

    if-eq v2, v3, :cond_2

    if-eqz v2, :cond_2

    const-class v3, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1477
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1476
    invoke-static {v2, v3, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->isJSONTypeIgnore(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    nop

    .line 1474
    :goto_1
    return v0
.end method

.method public static isKotlin(Ljava/lang/Class;)Z
    .locals 2
    .param p0, "clazz"    # Ljava/lang/Class;

    .line 64
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_metadata:Ljava/lang/Class;

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_metadata_error:Z

    if-nez v0, :cond_0

    .line 66
    :try_start_0
    const-string v0, "kotlin.Metadata"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_metadata:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x1

    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_metadata_error:Z

    .line 72
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_metadata:Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 73
    const/4 v0, 0x0

    return v0

    .line 76
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlin_metadata:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private static isKotlinIgnore(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 9
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "methodName"    # Ljava/lang/String;

    .line 80
    const-string v0, "isEmpty"

    const-string v1, "getEndInclusive"

    sget-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->kotlinIgnores:Ljava/util/Map;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->kotlinIgnores_error:Z

    if-nez v2, :cond_0

    .line 82
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 84
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;[Ljava/lang/String;>;"
    const-string v4, "kotlin.ranges.CharRange"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 85
    .local v4, "charRangeClass":Ljava/lang/Class;
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v5, "kotlin.ranges.IntRange"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 88
    .local v5, "intRangeClass":Ljava/lang/Class;
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v6, "kotlin.ranges.LongRange"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 91
    .local v6, "longRangeClass":Ljava/lang/Class;
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v7, "kotlin.ranges.ClosedFloatRange"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 94
    .local v7, "floatRangeClass":Ljava/lang/Class;
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v8, "kotlin.ranges.ClosedDoubleRange"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 97
    .local v8, "doubleRangeClass":Ljava/lang/Class;
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sput-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->kotlinIgnores:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;[Ljava/lang/String;>;"
    .end local v4    # "charRangeClass":Ljava/lang/Class;
    .end local v5    # "intRangeClass":Ljava/lang/Class;
    .end local v6    # "longRangeClass":Ljava/lang/Class;
    .end local v7    # "floatRangeClass":Ljava/lang/Class;
    .end local v8    # "doubleRangeClass":Ljava/lang/Class;
    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    .line 101
    .local v0, "error":Ljava/lang/Throwable;
    sput-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->kotlinIgnores_error:Z

    .line 105
    .end local v0    # "error":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlinIgnores:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 106
    return v1

    .line 109
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->kotlinIgnores:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 110
    .local v0, "ignores":[Ljava/lang/String;
    if-nez v0, :cond_2

    .line 111
    return v1

    .line 114
    :cond_2
    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    return v3
.end method

.method public static loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 910
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;
    .locals 7
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "cache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Z)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 914
    const/4 v0, 0x0

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 918
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x100

    if-ge v1, v2, :cond_9

    .line 922
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 924
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_1

    .line 925
    return-object v2

    .line 928
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5b

    const/4 v6, 0x1

    if-ne v4, v5, :cond_3

    .line 929
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, v3}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v1

    .line 930
    .local v1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v1, :cond_2

    .line 931
    return-object v0

    .line 933
    :cond_2
    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 936
    .end local v1    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    const-string v0, "L"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 937
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v6

    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 938
    .local v0, "newClassName":Ljava/lang/String;
    invoke-static {v0, p1, v3}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v1

    return-object v1

    .line 942
    .end local v0    # "newClassName":Ljava/lang/String;
    :cond_4
    if-eqz p1, :cond_6

    .line 943
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    move-object v2, v0

    .line 945
    if-eqz p2, :cond_5

    .line 946
    invoke-interface {v1, p0, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 949
    :cond_5
    return-object v2

    .line 951
    :catch_0
    move-exception v0

    goto :goto_0

    .line 954
    :cond_6
    nop

    .line 957
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 959
    .local v0, "contextClassLoader":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_8

    if-eq v0, p1, :cond_8

    .line 960
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 962
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p2, :cond_7

    .line 963
    :try_start_2
    sget-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p0, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 968
    .end local v0    # "contextClassLoader":Ljava/lang/ClassLoader;
    :catch_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 966
    .restart local v0    # "contextClassLoader":Ljava/lang/ClassLoader;
    :cond_7
    :goto_1
    return-object v1

    .line 971
    .end local v0    # "contextClassLoader":Ljava/lang/ClassLoader;
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_8
    goto :goto_2

    .line 968
    :catch_2
    move-exception v0

    .line 974
    :goto_2
    :try_start_3
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    move-object v2, v0

    .line 976
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 978
    return-object v2

    .line 979
    :catch_3
    move-exception v0

    .line 984
    return-object v2

    .line 919
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_9
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "className too long. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 915
    :cond_a
    :goto_3
    return-object v0
.end method

.method public static setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z
    .locals 4
    .param p1, "member"    # Ljava/lang/reflect/Member;
    .param p2, "classMofifiers"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Member;",
            "I)Z"
        }
    .end annotation

    .line 1539
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessibleEnable:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 1545
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 1547
    .local v1, "supperClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const-class v3, Ljava/lang/Object;

    if-ne v1, v3, :cond_2

    .line 1548
    :cond_1
    invoke-interface {p1}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v3

    and-int/2addr v3, v2

    if-eqz v3, :cond_2

    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_2

    .line 1551
    return v0

    .line 1554
    :cond_2
    move-object v3, p1

    check-cast v3, Ljava/lang/reflect/AccessibleObject;

    .line 1557
    .local v3, "obj":Ljava/lang/reflect/AccessibleObject;
    :try_start_0
    invoke-virtual {v3, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1558
    return v2

    .line 1559
    :catch_0
    move-exception v2

    .line 1560
    .local v2, "error":Ljava/security/AccessControlException;
    sput-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessibleEnable:Z

    .line 1561
    return v0

    .line 1542
    .end local v1    # "supperClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "error":Ljava/security/AccessControlException;
    .end local v3    # "obj":Ljava/lang/reflect/AccessibleObject;
    :cond_3
    :goto_0
    return v0
.end method

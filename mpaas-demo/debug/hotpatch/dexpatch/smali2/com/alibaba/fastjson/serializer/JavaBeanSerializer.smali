.class public Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
.super Ljava/lang/Object;
.source "JavaBeanSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field private static final false_chars:[C

.field private static final true_chars:[C


# instance fields
.field protected features:I

.field private final getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

.field private final sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

.field protected final typeKey:Ljava/lang/String;

.field protected final typeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->true_chars:[C

    .line 35
    const/4 v0, 0x5

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->false_chars:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x74s
        0x72s
        0x75s
        0x65s
    .end array-data

    :array_1
    .array-data 2
        0x66s
        0x61s
        0x6cs
        0x73s
        0x65s
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 47
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    check-cast v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/PropertyNamingStrategy;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;ILjava/util/Map;ZZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)V
    .locals 17
    .param p2, "classModifiers"    # I
    .param p4, "fieldOnly"    # Z
    .param p5, "jsonTypeSupport"    # Z
    .param p6, "jsonFieldSupport"    # Z
    .param p7, "fieldGenericSupport"    # Z
    .param p8, "propertyNamingStrategy"    # Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZZZ",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")V"
        }
    .end annotation

    .line 85
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "aliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->features:I

    .line 86
    if-eqz p5, :cond_0

    const-class v2, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 87
    move-object/from16 v12, p1

    invoke-virtual {v12, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/annotation/JSONType;

    goto :goto_0

    :cond_0
    move-object/from16 v12, p1

    const/4 v2, 0x0

    .line 90
    .local v2, "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    :goto_0
    const/4 v3, 0x0

    .local v3, "typeName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 91
    .local v4, "typeKey":Ljava/lang/String;
    if-eqz v2, :cond_9

    .line 92
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONType;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v5

    iput v5, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->features:I

    .line 94
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONType;->typeName()Ljava/lang/String;

    move-result-object v3

    .line 95
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 96
    const/4 v3, 0x0

    goto :goto_5

    .line 98
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    .line 99
    .local v5, "supperClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    if-eqz v5, :cond_4

    const-class v6, Ljava/lang/Object;

    if-eq v5, v6, :cond_4

    .line 101
    const-class v6, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 102
    .local v6, "superJsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    if-nez v6, :cond_2

    .line 103
    goto :goto_2

    .line 106
    :cond_2
    invoke-interface {v6}, Lcom/alibaba/fastjson/annotation/JSONType;->typeKey()Ljava/lang/String;

    move-result-object v4

    .line 107
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_3

    .line 108
    goto :goto_2

    .line 100
    .end local v6    # "superJsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    goto :goto_1

    .line 112
    .end local v5    # "supperClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_6

    aget-object v8, v5, v7

    .line 113
    .local v8, "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v9, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    check-cast v9, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 114
    .local v9, "superJsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    if-eqz v9, :cond_5

    .line 115
    invoke-interface {v9}, Lcom/alibaba/fastjson/annotation/JSONType;->typeKey()Ljava/lang/String;

    move-result-object v4

    .line 116
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_5

    .line 117
    goto :goto_4

    .line 112
    .end local v8    # "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "superJsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 121
    :cond_6
    :goto_4
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_7

    .line 122
    const/4 v4, 0x0

    .line 126
    :cond_7
    :goto_5
    if-nez p8, :cond_8

    .line 127
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONType;->naming()Lcom/alibaba/fastjson/PropertyNamingStrategy;

    move-result-object v5

    .line 128
    .local v5, "typeNaming":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    sget-object v6, Lcom/alibaba/fastjson/PropertyNamingStrategy;->CamelCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    if-eq v5, v6, :cond_8

    .line 129
    move-object v6, v5

    move-object v14, v3

    move-object v15, v4

    move-object v13, v6

    .end local p8    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .local v6, "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    goto :goto_6

    .line 133
    .end local v5    # "typeNaming":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .end local v6    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .restart local p8    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    :cond_8
    move-object/from16 v13, p8

    move-object v14, v3

    move-object v15, v4

    goto :goto_6

    .line 91
    :cond_9
    move-object/from16 v13, p8

    move-object v14, v3

    move-object v15, v4

    .line 133
    .end local v3    # "typeName":Ljava/lang/String;
    .end local v4    # "typeKey":Ljava/lang/String;
    .end local p8    # "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .local v13, "propertyNamingStrategy":Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .local v14, "typeName":Ljava/lang/String;
    .local v15, "typeKey":Ljava/lang/String;
    :goto_6
    iput-object v14, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->typeName:Ljava/lang/String;

    .line 134
    iput-object v15, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->typeKey:Ljava/lang/String;

    .line 137
    const/4 v8, 0x0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p4

    move-object v6, v2

    move-object/from16 v7, p3

    move/from16 v9, p6

    move/from16 v10, p7

    move-object v11, v13

    invoke-static/range {v3 .. v11}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGetters(Ljava/lang/Class;IZLcom/alibaba/fastjson/annotation/JSONType;Ljava/util/Map;ZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;

    move-result-object v3

    .line 146
    .local v3, "fieldInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v4, "getterList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/FieldSerializer;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 149
    .local v6, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    new-instance v7, Lcom/alibaba/fastjson/serializer/FieldSerializer;

    invoke-direct {v7, v6}, Lcom/alibaba/fastjson/serializer/FieldSerializer;-><init>(Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 151
    .local v7, "fieldDeser":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    .end local v6    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v7    # "fieldDeser":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    goto :goto_7

    .line 154
    :cond_a
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lcom/alibaba/fastjson/serializer/FieldSerializer;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/alibaba/fastjson/serializer/FieldSerializer;

    iput-object v5, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    .line 157
    .end local v3    # "fieldInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v4    # "getterList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/FieldSerializer;>;"
    const/4 v3, 0x0

    .line 159
    .local v3, "orders":[Ljava/lang/String;
    if-eqz v2, :cond_b

    .line 160
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONType;->orders()[Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    goto :goto_8

    .line 159
    :cond_b
    move-object v11, v3

    .line 163
    .end local v3    # "orders":[Ljava/lang/String;
    .local v11, "orders":[Ljava/lang/String;
    :goto_8
    if-eqz v11, :cond_d

    array-length v3, v11

    if-eqz v3, :cond_d

    .line 164
    const/4 v8, 0x1

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p4

    move-object v6, v2

    move-object/from16 v7, p3

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v16, v11

    .end local v11    # "orders":[Ljava/lang/String;
    .local v16, "orders":[Ljava/lang/String;
    move-object v11, v13

    invoke-static/range {v3 .. v11}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGetters(Ljava/lang/Class;IZLcom/alibaba/fastjson/annotation/JSONType;Ljava/util/Map;ZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;

    move-result-object v1

    .line 173
    .local v1, "fieldInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v3, "getterList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/FieldSerializer;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 176
    .local v5, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    new-instance v6, Lcom/alibaba/fastjson/serializer/FieldSerializer;

    invoke-direct {v6, v5}, Lcom/alibaba/fastjson/serializer/FieldSerializer;-><init>(Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 177
    .local v6, "fieldDeser":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    .end local v5    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v6    # "fieldDeser":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    goto :goto_9

    .line 180
    :cond_c
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/alibaba/fastjson/serializer/FieldSerializer;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/alibaba/fastjson/serializer/FieldSerializer;

    iput-object v4, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    .line 181
    .end local v1    # "fieldInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v3    # "getterList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/FieldSerializer;>;"
    goto :goto_a

    .line 163
    .end local v16    # "orders":[Ljava/lang/String;
    .restart local v11    # "orders":[Ljava/lang/String;
    :cond_d
    move-object/from16 v16, v11

    .line 182
    .end local v11    # "orders":[Ljava/lang/String;
    .restart local v16    # "orders":[Ljava/lang/String;
    array-length v3, v5

    new-array v3, v3, [Lcom/alibaba/fastjson/serializer/FieldSerializer;

    .line 183
    .local v3, "sortedGetters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    array-length v4, v5

    invoke-static {v5, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 186
    invoke-static {v3, v5}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 187
    iput-object v5, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    goto :goto_a

    .line 189
    :cond_e
    iput-object v3, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    .line 192
    .end local v3    # "sortedGetters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    :goto_a
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/alibaba/fastjson/PropertyNamingStrategy;)V
    .locals 9
    .param p2, "propertyNamingStrategy"    # Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")V"
        }
    .end annotation

    .line 51
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    const/4 v0, 0x0

    move-object v3, v0

    check-cast v3, Ljava/util/Map;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Ljava/lang/Class;ILjava/util/Map;ZZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)V

    .line 52
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 9
    .param p2, "aliasList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 55
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {p2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->map([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Ljava/lang/Class;ILjava/util/Map;ZZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)V

    .line 56
    return-void
.end method

.method private static varargs map([Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .param p0, "aliasList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 60
    .local v0, "aliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 61
    .local v3, "alias":Ljava/lang/String;
    invoke-interface {v0, v3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .end local v3    # "alias":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getFieldValuesMap(Ljava/lang/Object;)Ljava/util/Map;
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 700
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 702
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 703
    .local v4, "getter":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    iget-object v5, v4, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v5, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    .end local v4    # "getter":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 706
    :cond_0
    return-object v0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 47
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    iget-object v6, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 197
    .local v6, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    if-nez v3, :cond_0

    .line 198
    invoke-virtual {v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 199
    return-void

    .line 202
    :cond_0
    iget-object v7, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    if-eqz v7, :cond_1

    iget-object v7, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    iget v7, v7, Lcom/alibaba/fastjson/serializer/SerialContext;->features:I

    sget-object v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v8, v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v7, v8

    if-nez v7, :cond_2

    :cond_1
    iget-object v7, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    if-eqz v7, :cond_2

    iget-object v7, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    .line 205
    invoke-virtual {v7, v3}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 206
    invoke-virtual/range {p1 .. p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    .line 207
    return-void

    .line 212
    :cond_2
    iget v7, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v8, v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v7, v8

    if-eqz v7, :cond_3

    .line 213
    iget-object v7, v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    .local v7, "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    goto :goto_0

    .line 215
    .end local v7    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    :cond_3
    iget-object v7, v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    .line 218
    .restart local v7    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    :goto_0
    iget-object v8, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 220
    .local v8, "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    iget v9, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v10, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v10, v10, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v9, v10

    if-nez v9, :cond_5

    .line 221
    new-instance v9, Lcom/alibaba/fastjson/serializer/SerialContext;

    iget v10, v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->features:I

    invoke-direct {v9, v8, v3, v4, v10}, Lcom/alibaba/fastjson/serializer/SerialContext;-><init>(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v9, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 222
    iget-object v9, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    if-nez v9, :cond_4

    .line 223
    new-instance v9, Ljava/util/IdentityHashMap;

    invoke-direct {v9}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v9, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    .line 225
    :cond_4
    iget-object v9, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    iget-object v10, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    invoke-virtual {v9, v3, v10}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    :cond_5
    iget v9, v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->features:I

    sget-object v10, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BeanToArray:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v10, v10, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v9, v10

    const/4 v10, 0x1

    if-nez v9, :cond_7

    iget v9, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v12, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BeanToArray:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v12, v12, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v9, v12

    if-eqz v9, :cond_6

    goto :goto_1

    :cond_6
    const/4 v9, 0x0

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v9, 0x1

    .line 234
    .local v9, "writeAsArray":Z
    :goto_2
    if-eqz v9, :cond_8

    const/16 v12, 0x5b

    goto :goto_3

    :cond_8
    const/16 v12, 0x7b

    .line 235
    .local v12, "startSeperator":C
    :goto_3
    if-eqz v9, :cond_9

    const/16 v13, 0x5d

    goto :goto_4

    :cond_9
    const/16 v13, 0x7d

    .line 238
    .local v13, "endSeperator":C
    :goto_4
    :try_start_0
    iget v14, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v14, v10

    .line 239
    .local v14, "newcount":I
    iget-object v15, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v15, v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    if-le v14, v15, :cond_b

    .line 240
    :try_start_1
    iget-object v15, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v15, :cond_a

    .line 241
    invoke-virtual {v6, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_5

    .line 243
    :cond_a
    invoke-virtual {v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    const/4 v14, 0x1

    goto :goto_5

    .line 695
    .end local v12    # "startSeperator":C
    .end local v13    # "endSeperator":C
    .end local v14    # "newcount":I
    :catchall_0
    move-exception v0

    move-object v5, v0

    move-object v10, v4

    move-object v4, v8

    move-object/from16 v46, v7

    move-object v7, v3

    move-object/from16 v3, v46

    goto/16 :goto_40

    .line 687
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v4, v8

    move-object/from16 v46, v7

    move-object v7, v3

    move-object/from16 v3, v46

    goto/16 :goto_3e

    .line 247
    .restart local v12    # "startSeperator":C
    .restart local v13    # "endSeperator":C
    .restart local v14    # "newcount":I
    :cond_b
    :goto_5
    :try_start_2
    iget-object v15, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v10, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v12, v15, v10

    .line 248
    iput v14, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 251
    .end local v14    # "newcount":I
    array-length v10, v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    if-lez v10, :cond_c

    :try_start_3
    iget v10, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v14, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v14, v14, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v10, v14

    if-eqz v10, :cond_c

    .line 253
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->incrementIndent()V

    .line 254
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 257
    :cond_c
    const/4 v10, 0x0

    .line 260
    .local v10, "commaFlag":Z
    :try_start_4
    iget v14, v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->features:I

    sget-object v15, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v15, v15, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    and-int/2addr v14, v15

    if-nez v14, :cond_e

    :try_start_5
    iget v14, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v15, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v15, v15, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v14, v15

    if-eqz v14, :cond_d

    if-nez v5, :cond_e

    iget v14, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v15, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteRootClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v15, v15, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v14, v15

    if-eqz v14, :cond_e

    iget-object v14, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    if-eqz v14, :cond_d

    iget-object v14, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    iget-object v14, v14, Lcom/alibaba/fastjson/serializer/SerialContext;->parent:Lcom/alibaba/fastjson/serializer/SerialContext;

    if-eqz v14, :cond_d

    goto :goto_6

    :cond_d
    const/4 v14, 0x0

    goto :goto_7

    :cond_e
    :goto_6
    const/4 v14, 0x1

    .line 266
    .local v14, "isWriteClassName":Z
    :goto_7
    if-eqz v14, :cond_11

    .line 267
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    .line 268
    .local v15, "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq v15, v5, :cond_11

    .line 269
    iget-object v11, v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->typeKey:Ljava/lang/String;

    if-eqz v11, :cond_f

    goto :goto_8

    :cond_f
    iget-object v11, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    iget-object v11, v11, Lcom/alibaba/fastjson/serializer/SerializeConfig;->typeKey:Ljava/lang/String;

    :goto_8
    const/4 v5, 0x0

    invoke-virtual {v6, v11, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    .line 270
    iget-object v5, v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->typeName:Ljava/lang/String;

    .line 271
    .local v5, "typeName":Ljava/lang/String;
    if-nez v5, :cond_10

    .line 272
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    move-object v5, v11

    .line 274
    :cond_10
    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 275
    const/4 v10, 0x1

    .line 279
    .end local v5    # "typeName":Ljava/lang/String;
    .end local v15    # "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_11
    if-eqz v10, :cond_12

    const/16 v11, 0x2c

    goto :goto_9

    :cond_12
    const/4 v11, 0x0

    .line 281
    .local v11, "seperator":C
    :goto_9
    move v15, v11

    .line 282
    .local v15, "newSeperator":C
    :try_start_6
    iget-object v5, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->beforeFilters:Ljava/util/List;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    if-eqz v5, :cond_13

    .line 283
    :try_start_7
    iget-object v5, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->beforeFilters:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/alibaba/fastjson/serializer/BeforeFilter;

    move-object/from16 v18, v17

    .line 284
    .local v18, "beforeFilter":Lcom/alibaba/fastjson/serializer/BeforeFilter;
    move-object/from16 v17, v5

    move-object/from16 v5, v18

    .end local v18    # "beforeFilter":Lcom/alibaba/fastjson/serializer/BeforeFilter;
    .local v5, "beforeFilter":Lcom/alibaba/fastjson/serializer/BeforeFilter;
    invoke-virtual {v5, v2, v3, v15}, Lcom/alibaba/fastjson/serializer/BeforeFilter;->writeBefore(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    move-result v18
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move/from16 v15, v18

    .line 285
    .end local v5    # "beforeFilter":Lcom/alibaba/fastjson/serializer/BeforeFilter;
    move-object/from16 v5, v17

    goto :goto_a

    .line 287
    :cond_13
    const/16 v5, 0x2c

    if-ne v15, v5, :cond_14

    const/4 v5, 0x1

    goto :goto_b

    :cond_14
    const/4 v5, 0x0

    .line 289
    .end local v10    # "commaFlag":Z
    .local v5, "commaFlag":Z
    :goto_b
    :try_start_8
    iget v10, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v17, v5

    .end local v5    # "commaFlag":Z
    .local v17, "commaFlag":Z
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v5, v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    and-int/2addr v5, v10

    if-eqz v5, :cond_15

    :try_start_9
    iget v5, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v10, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v10, v10, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    and-int/2addr v5, v10

    if-nez v5, :cond_15

    const/4 v5, 0x1

    goto :goto_c

    :cond_15
    const/4 v5, 0x0

    .line 291
    .local v5, "directWritePrefix":Z
    :goto_c
    :try_start_a
    iget v10, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v18, v11

    .end local v11    # "seperator":C
    .local v18, "seperator":C
    sget-object v11, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v11, v11, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v10, v11

    if-eqz v10, :cond_16

    const/4 v10, 0x1

    goto :goto_d

    :cond_16
    const/4 v10, 0x0

    .line 292
    .local v10, "useSingleQuote":Z
    :goto_d
    iget v11, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v19, v12

    .end local v12    # "startSeperator":C
    .local v19, "startSeperator":C
    sget-object v12, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v12, v12, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v11, v12

    if-eqz v11, :cond_17

    const/4 v11, 0x1

    goto :goto_e

    :cond_17
    const/4 v11, 0x0

    .line 294
    .local v11, "notWriteDefaultValue":Z
    :goto_e
    iget-object v12, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->propertyFilters:Ljava/util/List;

    .line 295
    .local v12, "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    move/from16 v20, v14

    .end local v14    # "isWriteClassName":Z
    .local v20, "isWriteClassName":Z
    iget-object v14, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->nameFilters:Ljava/util/List;

    .line 296
    .local v14, "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    move/from16 v21, v15

    .end local v15    # "newSeperator":C
    .local v21, "newSeperator":C
    iget-object v15, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->valueFilters:Ljava/util/List;

    .line 297
    .local v15, "valueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
    iget-object v4, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->propertyPreFilters:Ljava/util/List;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    .line 299
    .local v4, "filters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    const/16 v22, 0x0

    move/from16 v46, v22

    move-object/from16 v22, v8

    move/from16 v8, v46

    .local v8, "i":I
    .local v22, "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    :goto_f
    move/from16 v23, v13

    .end local v13    # "endSeperator":C
    .local v23, "endSeperator":C
    :try_start_b
    array-length v13, v7
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    if-ge v8, v13, :cond_70

    .line 300
    :try_start_c
    aget-object v13, v7, v8
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 301
    .local v13, "fieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    move-object/from16 v24, v7

    .end local v7    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .local v24, "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    :try_start_d
    iget-object v7, v13, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 302
    .local v7, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    move/from16 v25, v8

    .end local v8    # "i":I
    .local v25, "i":I
    iget-object v8, v7, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 303
    .local v8, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move/from16 v26, v10

    .end local v10    # "useSingleQuote":Z
    .local v26, "useSingleQuote":Z
    iget-object v10, v7, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 304
    .local v10, "fieldInfoName":Ljava/lang/String;
    move/from16 v27, v5

    .end local v5    # "directWritePrefix":Z
    .local v27, "directWritePrefix":Z
    iget v5, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v28, v11

    .end local v11    # "notWriteDefaultValue":Z
    .local v28, "notWriteDefaultValue":Z
    sget-object v11, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SkipTransientField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v11, v11, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    and-int/2addr v5, v11

    if-eqz v5, :cond_18

    .line 305
    :try_start_e
    iget-object v5, v7, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 306
    .local v5, "field":Ljava/lang/reflect/Field;
    if-eqz v5, :cond_18

    .line 307
    iget-boolean v11, v7, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-eqz v11, :cond_18

    .line 308
    move-object/from16 v29, v4

    move-object/from16 v38, v12

    move-object/from16 v36, v14

    move-object/from16 v40, v15

    goto/16 :goto_25

    .line 695
    .end local v4    # "filters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v7    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v8    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "fieldInfoName":Ljava/lang/String;
    .end local v12    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    .end local v13    # "fieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v14    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    .end local v15    # "valueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
    .end local v17    # "commaFlag":Z
    .end local v18    # "seperator":C
    .end local v19    # "startSeperator":C
    .end local v20    # "isWriteClassName":Z
    .end local v21    # "newSeperator":C
    .end local v23    # "endSeperator":C
    .end local v25    # "i":I
    .end local v26    # "useSingleQuote":Z
    .end local v27    # "directWritePrefix":Z
    .end local v28    # "notWriteDefaultValue":Z
    :catchall_1
    move-exception v0

    move-object/from16 v10, p3

    move-object v5, v0

    move-object v7, v3

    goto/16 :goto_36

    .line 687
    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v7, v3

    goto/16 :goto_38

    .line 313
    .restart local v4    # "filters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    .restart local v7    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v8    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v10    # "fieldInfoName":Ljava/lang/String;
    .restart local v12    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    .restart local v13    # "fieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v14    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    .restart local v15    # "valueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
    .restart local v17    # "commaFlag":Z
    .restart local v18    # "seperator":C
    .restart local v19    # "startSeperator":C
    .restart local v20    # "isWriteClassName":Z
    .restart local v21    # "newSeperator":C
    .restart local v23    # "endSeperator":C
    .restart local v25    # "i":I
    .restart local v26    # "useSingleQuote":Z
    .restart local v27    # "directWritePrefix":Z
    .restart local v28    # "notWriteDefaultValue":Z
    :cond_18
    :try_start_f
    iget-object v5, v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->typeKey:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    if-eqz v5, :cond_19

    :try_start_10
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 314
    move-object/from16 v29, v4

    move-object/from16 v38, v12

    move-object/from16 v36, v14

    move-object/from16 v40, v15

    goto/16 :goto_25

    .line 317
    :cond_19
    const/4 v5, 0x1

    .line 319
    .local v5, "applyName":Z
    if-eqz v4, :cond_1c

    .line 320
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_10
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_1b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/alibaba/fastjson/serializer/PropertyPreFilter;

    move-object/from16 v30, v29

    .line 321
    .local v30, "filter":Lcom/alibaba/fastjson/serializer/PropertyPreFilter;
    move-object/from16 v29, v4

    move-object/from16 v4, v30

    .end local v30    # "filter":Lcom/alibaba/fastjson/serializer/PropertyPreFilter;
    .local v4, "filter":Lcom/alibaba/fastjson/serializer/PropertyPreFilter;
    .local v29, "filters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    invoke-interface {v4, v2, v3, v10}, Lcom/alibaba/fastjson/serializer/PropertyPreFilter;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v30
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    if-nez v30, :cond_1a

    .line 322
    const/4 v5, 0x0

    .line 323
    goto :goto_11

    .line 325
    .end local v4    # "filter":Lcom/alibaba/fastjson/serializer/PropertyPreFilter;
    :cond_1a
    move-object/from16 v4, v29

    goto :goto_10

    .line 320
    .end local v29    # "filters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    .local v4, "filters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    :cond_1b
    move-object/from16 v29, v4

    .end local v4    # "filters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    .restart local v29    # "filters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    goto :goto_11

    .line 319
    .end local v29    # "filters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    .restart local v4    # "filters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    :cond_1c
    move-object/from16 v29, v4

    .line 328
    .end local v4    # "filters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    .restart local v29    # "filters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    :goto_11
    if-nez v5, :cond_1d

    .line 329
    move-object/from16 v38, v12

    move-object/from16 v36, v14

    move-object/from16 v40, v15

    goto/16 :goto_25

    .line 332
    :cond_1d
    const/4 v4, 0x0

    .line 333
    .local v4, "propertyValue":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 334
    .local v11, "propertyValueInt":I
    const-wide/16 v30, 0x0

    .line 335
    .local v30, "propertyValueLong":J
    const/16 v32, 0x0

    .line 337
    .local v32, "propertyValueBoolean":Z
    const/16 v33, 0x0

    .line 338
    .local v33, "propertyValueGot":Z
    const/16 v34, 0x0

    .line 339
    .local v34, "valueGot":Z
    move-object/from16 v35, v4

    .end local v4    # "propertyValue":Ljava/lang/Object;
    .local v35, "propertyValue":Ljava/lang/Object;
    :try_start_11
    iget-boolean v4, v7, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    if-eqz v4, :cond_21

    .line 340
    :try_start_12
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v8, v4, :cond_1e

    .line 341
    iget-object v4, v7, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    move v11, v4

    .line 342
    const/16 v34, 0x1

    move-object/from16 v4, v35

    goto :goto_12

    .line 343
    :cond_1e
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v8, v4, :cond_1f

    .line 344
    iget-object v4, v7, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v36

    move-wide/from16 v30, v36

    .line 345
    const/16 v34, 0x1

    move-object/from16 v4, v35

    goto :goto_12

    .line 346
    :cond_1f
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v8, v4, :cond_20

    .line 347
    iget-object v4, v7, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v4

    move/from16 v32, v4

    .line 348
    const/16 v34, 0x1

    move-object/from16 v4, v35

    goto :goto_12

    .line 350
    :cond_20
    iget-object v4, v7, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 351
    .end local v35    # "propertyValue":Ljava/lang/Object;
    .restart local v4    # "propertyValue":Ljava/lang/Object;
    const/16 v33, 0x1

    goto :goto_12

    .line 354
    .end local v4    # "propertyValue":Ljava/lang/Object;
    .restart local v35    # "propertyValue":Ljava/lang/Object;
    :cond_21
    :try_start_13
    invoke-virtual {v13, v3}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 355
    .end local v35    # "propertyValue":Ljava/lang/Object;
    .restart local v4    # "propertyValue":Ljava/lang/Object;
    const/16 v33, 0x1

    .line 358
    :goto_12
    const/16 v35, 0x1

    .line 360
    .local v35, "apply":Z
    if-eqz v12, :cond_28

    .line 361
    if-eqz v34, :cond_24

    .line 362
    move-object/from16 v36, v4

    .end local v4    # "propertyValue":Ljava/lang/Object;
    .local v36, "propertyValue":Ljava/lang/Object;
    :try_start_14
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v8, v4, :cond_22

    .line 363
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 364
    .end local v36    # "propertyValue":Ljava/lang/Object;
    .restart local v4    # "propertyValue":Ljava/lang/Object;
    const/16 v33, 0x1

    goto :goto_13

    .line 365
    .end local v4    # "propertyValue":Ljava/lang/Object;
    .restart local v36    # "propertyValue":Ljava/lang/Object;
    :cond_22
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v8, v4, :cond_23

    .line 366
    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 367
    .end local v36    # "propertyValue":Ljava/lang/Object;
    .restart local v4    # "propertyValue":Ljava/lang/Object;
    const/16 v33, 0x1

    goto :goto_13

    .line 368
    .end local v4    # "propertyValue":Ljava/lang/Object;
    .restart local v36    # "propertyValue":Ljava/lang/Object;
    :cond_23
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v8, v4, :cond_25

    .line 369
    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 370
    .end local v36    # "propertyValue":Ljava/lang/Object;
    .restart local v4    # "propertyValue":Ljava/lang/Object;
    const/16 v33, 0x1

    goto :goto_13

    .line 361
    :cond_24
    move-object/from16 v36, v4

    .line 374
    .end local v4    # "propertyValue":Ljava/lang/Object;
    .restart local v36    # "propertyValue":Ljava/lang/Object;
    :cond_25
    move-object/from16 v4, v36

    .end local v36    # "propertyValue":Ljava/lang/Object;
    .restart local v4    # "propertyValue":Ljava/lang/Object;
    :goto_13
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v36

    :goto_14
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_27

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/alibaba/fastjson/serializer/PropertyFilter;

    move-object/from16 v38, v37

    .line 375
    .local v38, "propertyFilter":Lcom/alibaba/fastjson/serializer/PropertyFilter;
    move/from16 v37, v5

    move-object/from16 v5, v38

    .end local v38    # "propertyFilter":Lcom/alibaba/fastjson/serializer/PropertyFilter;
    .local v5, "propertyFilter":Lcom/alibaba/fastjson/serializer/PropertyFilter;
    .local v37, "applyName":Z
    invoke-interface {v5, v3, v10, v4}, Lcom/alibaba/fastjson/serializer/PropertyFilter;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_26

    .line 376
    const/16 v35, 0x0

    .line 377
    goto :goto_15

    .line 379
    .end local v5    # "propertyFilter":Lcom/alibaba/fastjson/serializer/PropertyFilter;
    :cond_26
    move/from16 v5, v37

    goto :goto_14

    .line 374
    .end local v37    # "applyName":Z
    .local v5, "applyName":Z
    :cond_27
    move/from16 v37, v5

    .end local v5    # "applyName":Z
    .restart local v37    # "applyName":Z
    goto :goto_15

    .line 360
    .end local v37    # "applyName":Z
    .restart local v5    # "applyName":Z
    :cond_28
    move-object/from16 v36, v4

    move/from16 v37, v5

    .line 383
    .end local v5    # "applyName":Z
    .restart local v37    # "applyName":Z
    :goto_15
    if-nez v35, :cond_29

    .line 384
    move-object/from16 v38, v12

    move-object/from16 v36, v14

    move-object/from16 v40, v15

    goto/16 :goto_25

    .line 387
    :cond_29
    move-object v5, v10

    .line 389
    .local v5, "key":Ljava/lang/String;
    if-eqz v14, :cond_2f

    .line 390
    if-eqz v34, :cond_2c

    if-nez v33, :cond_2c

    .line 391
    move-object/from16 v36, v4

    .end local v4    # "propertyValue":Ljava/lang/Object;
    .restart local v36    # "propertyValue":Ljava/lang/Object;
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v8, v4, :cond_2a

    .line 392
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 393
    .end local v36    # "propertyValue":Ljava/lang/Object;
    .restart local v4    # "propertyValue":Ljava/lang/Object;
    const/16 v33, 0x1

    goto :goto_16

    .line 394
    .end local v4    # "propertyValue":Ljava/lang/Object;
    .restart local v36    # "propertyValue":Ljava/lang/Object;
    :cond_2a
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v8, v4, :cond_2b

    .line 395
    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 396
    .end local v36    # "propertyValue":Ljava/lang/Object;
    .restart local v4    # "propertyValue":Ljava/lang/Object;
    const/16 v33, 0x1

    goto :goto_16

    .line 397
    .end local v4    # "propertyValue":Ljava/lang/Object;
    .restart local v36    # "propertyValue":Ljava/lang/Object;
    :cond_2b
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v8, v4, :cond_2d

    .line 398
    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 399
    .end local v36    # "propertyValue":Ljava/lang/Object;
    .restart local v4    # "propertyValue":Ljava/lang/Object;
    const/16 v33, 0x1

    goto :goto_16

    .line 390
    :cond_2c
    move-object/from16 v36, v4

    .line 403
    .end local v4    # "propertyValue":Ljava/lang/Object;
    .restart local v36    # "propertyValue":Ljava/lang/Object;
    :cond_2d
    move-object/from16 v4, v36

    .end local v36    # "propertyValue":Ljava/lang/Object;
    .restart local v4    # "propertyValue":Ljava/lang/Object;
    :goto_16
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v36

    :goto_17
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_2e

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/alibaba/fastjson/serializer/NameFilter;

    move-object/from16 v39, v38

    .line 404
    .local v39, "nameFilter":Lcom/alibaba/fastjson/serializer/NameFilter;
    move-object/from16 v38, v12

    move-object/from16 v12, v39

    .end local v39    # "nameFilter":Lcom/alibaba/fastjson/serializer/NameFilter;
    .local v12, "nameFilter":Lcom/alibaba/fastjson/serializer/NameFilter;
    .local v38, "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    invoke-interface {v12, v3, v5, v4}, Lcom/alibaba/fastjson/serializer/NameFilter;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v5, v39

    .line 405
    .end local v12    # "nameFilter":Lcom/alibaba/fastjson/serializer/NameFilter;
    move-object/from16 v12, v38

    goto :goto_17

    .line 403
    .end local v38    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    .local v12, "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    :cond_2e
    move-object/from16 v38, v12

    .end local v12    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    .restart local v38    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    goto :goto_18

    .line 389
    .end local v38    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    .restart local v12    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    :cond_2f
    move-object/from16 v36, v4

    move-object/from16 v38, v12

    .line 409
    .end local v12    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    .restart local v38    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    :goto_18
    move-object v12, v4

    .line 411
    .local v12, "originalValue":Ljava/lang/Object;
    if-eqz v15, :cond_35

    .line 412
    if-eqz v34, :cond_32

    if-nez v33, :cond_32

    .line 413
    move-object/from16 v36, v4

    .end local v4    # "propertyValue":Ljava/lang/Object;
    .restart local v36    # "propertyValue":Ljava/lang/Object;
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v8, v4, :cond_30

    .line 414
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 415
    .end local v36    # "propertyValue":Ljava/lang/Object;
    .restart local v4    # "propertyValue":Ljava/lang/Object;
    move-object v12, v4

    .line 416
    const/16 v33, 0x1

    goto :goto_19

    .line 417
    .end local v4    # "propertyValue":Ljava/lang/Object;
    .restart local v36    # "propertyValue":Ljava/lang/Object;
    :cond_30
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v8, v4, :cond_31

    .line 418
    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 419
    .end local v36    # "propertyValue":Ljava/lang/Object;
    .restart local v4    # "propertyValue":Ljava/lang/Object;
    move-object v12, v4

    .line 420
    const/16 v33, 0x1

    goto :goto_19

    .line 421
    .end local v4    # "propertyValue":Ljava/lang/Object;
    .restart local v36    # "propertyValue":Ljava/lang/Object;
    :cond_31
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v8, v4, :cond_33

    .line 422
    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 423
    .end local v36    # "propertyValue":Ljava/lang/Object;
    .restart local v4    # "propertyValue":Ljava/lang/Object;
    move-object v12, v4

    .line 424
    const/16 v33, 0x1

    goto :goto_19

    .line 412
    :cond_32
    move-object/from16 v36, v4

    .line 428
    .end local v4    # "propertyValue":Ljava/lang/Object;
    .restart local v36    # "propertyValue":Ljava/lang/Object;
    :cond_33
    move-object/from16 v4, v36

    .end local v36    # "propertyValue":Ljava/lang/Object;
    .restart local v4    # "propertyValue":Ljava/lang/Object;
    :goto_19
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v36

    :goto_1a
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v39

    if-eqz v39, :cond_34

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/alibaba/fastjson/serializer/ValueFilter;

    move-object/from16 v40, v39

    .line 429
    .local v40, "valueFilter":Lcom/alibaba/fastjson/serializer/ValueFilter;
    move-object/from16 v39, v12

    move-object/from16 v12, v40

    .end local v40    # "valueFilter":Lcom/alibaba/fastjson/serializer/ValueFilter;
    .local v12, "valueFilter":Lcom/alibaba/fastjson/serializer/ValueFilter;
    .local v39, "originalValue":Ljava/lang/Object;
    invoke-interface {v12, v3, v10, v4}, Lcom/alibaba/fastjson/serializer/ValueFilter;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    move-object/from16 v4, v40

    .line 430
    .end local v12    # "valueFilter":Lcom/alibaba/fastjson/serializer/ValueFilter;
    move-object/from16 v12, v39

    goto :goto_1a

    .line 428
    .end local v39    # "originalValue":Ljava/lang/Object;
    .local v12, "originalValue":Ljava/lang/Object;
    :cond_34
    move-object/from16 v39, v12

    .end local v12    # "originalValue":Ljava/lang/Object;
    .restart local v39    # "originalValue":Ljava/lang/Object;
    goto :goto_1b

    .line 411
    .end local v39    # "originalValue":Ljava/lang/Object;
    .restart local v12    # "originalValue":Ljava/lang/Object;
    :cond_35
    move-object/from16 v36, v4

    .line 434
    :goto_1b
    move-object/from16 v36, v14

    .end local v14    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    .local v36, "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    const-string v14, ""

    if-eqz v33, :cond_47

    if-nez v4, :cond_47

    .line 435
    move-object/from16 v39, v4

    .end local v4    # "propertyValue":Ljava/lang/Object;
    .local v39, "propertyValue":Ljava/lang/Object;
    :try_start_15
    iget v4, v7, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    move-object/from16 v40, v15

    .end local v15    # "valueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
    .local v40, "valueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
    iget v15, v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->features:I

    or-int/2addr v4, v15

    iget v15, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    or-int/2addr v4, v15

    .line 437
    .local v4, "serialzeFeatures":I
    const-class v15, Ljava/lang/Boolean;

    if-ne v8, v15, :cond_3a

    .line 438
    sget-object v15, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v15, v15, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 439
    .local v15, "defaultMask":I
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v3, v15

    .line 440
    .local v3, "mask":I
    if-nez v9, :cond_36

    and-int v41, v4, v3

    if-nez v41, :cond_36

    move-object/from16 v41, v7

    .end local v7    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .local v41, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget v7, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v7, v3

    if-nez v7, :cond_37

    .line 441
    goto/16 :goto_25

    .line 440
    .end local v41    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v7    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_36
    move-object/from16 v41, v7

    .line 442
    .end local v7    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v41    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_37
    and-int v7, v4, v15

    if-nez v7, :cond_39

    iget v7, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v7, v15

    if-eqz v7, :cond_38

    goto :goto_1c

    :cond_38
    move-object/from16 v7, v39

    goto :goto_1d

    .line 443
    :cond_39
    :goto_1c
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v42

    move-object/from16 v7, v42

    .line 445
    .end local v3    # "mask":I
    .end local v15    # "defaultMask":I
    .end local v39    # "propertyValue":Ljava/lang/Object;
    .local v7, "propertyValue":Ljava/lang/Object;
    :goto_1d
    move-object v4, v7

    goto/16 :goto_24

    .end local v41    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .local v7, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v39    # "propertyValue":Ljava/lang/Object;
    :cond_3a
    move-object/from16 v41, v7

    .end local v7    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v41    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    const-class v3, Ljava/lang/String;

    if-ne v8, v3, :cond_3e

    .line 446
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 447
    .local v3, "defaultMask":I
    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v7, v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v7, v3

    .line 448
    .local v7, "mask":I
    if-nez v9, :cond_3b

    and-int v15, v4, v7

    if-nez v15, :cond_3b

    iget v15, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v15, v7

    if-nez v15, :cond_3b

    .line 449
    goto/16 :goto_25

    .line 450
    :cond_3b
    and-int v15, v4, v3

    if-nez v15, :cond_3d

    iget v15, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v15, v3

    if-eqz v15, :cond_3c

    goto :goto_1e

    :cond_3c
    move-object/from16 v15, v39

    goto :goto_1f

    .line 451
    :cond_3d
    :goto_1e
    move-object v15, v14

    .line 453
    .end local v3    # "defaultMask":I
    .end local v7    # "mask":I
    .end local v39    # "propertyValue":Ljava/lang/Object;
    .local v15, "propertyValue":Ljava/lang/Object;
    :goto_1f
    move-object v4, v15

    goto/16 :goto_24

    .end local v15    # "propertyValue":Ljava/lang/Object;
    .restart local v39    # "propertyValue":Ljava/lang/Object;
    :cond_3e
    const-class v3, Ljava/lang/Number;

    invoke-virtual {v3, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 454
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 455
    .restart local v3    # "defaultMask":I
    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v7, v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v7, v3

    .line 456
    .restart local v7    # "mask":I
    if-nez v9, :cond_3f

    and-int v15, v4, v7

    if-nez v15, :cond_3f

    iget v15, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v15, v7

    if-nez v15, :cond_3f

    .line 457
    goto/16 :goto_25

    .line 458
    :cond_3f
    and-int v15, v4, v3

    if-nez v15, :cond_41

    iget v15, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v15, v3

    if-eqz v15, :cond_40

    goto :goto_20

    :cond_40
    move-object/from16 v15, v39

    goto :goto_21

    .line 459
    :cond_41
    :goto_20
    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    move-object/from16 v15, v42

    .line 461
    .end local v3    # "defaultMask":I
    .end local v7    # "mask":I
    .end local v39    # "propertyValue":Ljava/lang/Object;
    .restart local v15    # "propertyValue":Ljava/lang/Object;
    :goto_21
    move-object v4, v15

    goto :goto_24

    .end local v15    # "propertyValue":Ljava/lang/Object;
    .restart local v39    # "propertyValue":Ljava/lang/Object;
    :cond_42
    const-class v3, Ljava/util/Collection;

    invoke-virtual {v3, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 462
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 463
    .restart local v3    # "defaultMask":I
    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v7, v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v7, v3

    .line 464
    .restart local v7    # "mask":I
    if-nez v9, :cond_43

    and-int v15, v4, v7

    if-nez v15, :cond_43

    iget v15, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v15, v7

    if-nez v15, :cond_43

    .line 465
    goto/16 :goto_25

    .line 466
    :cond_43
    and-int v15, v4, v3

    if-nez v15, :cond_45

    iget v15, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v15, v3

    if-eqz v15, :cond_44

    goto :goto_22

    :cond_44
    move-object/from16 v15, v39

    goto :goto_23

    .line 467
    :cond_45
    :goto_22
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 469
    .end local v3    # "defaultMask":I
    .end local v7    # "mask":I
    .end local v39    # "propertyValue":Ljava/lang/Object;
    .restart local v15    # "propertyValue":Ljava/lang/Object;
    :goto_23
    move-object v4, v15

    goto :goto_24

    .end local v15    # "propertyValue":Ljava/lang/Object;
    .restart local v39    # "propertyValue":Ljava/lang/Object;
    :cond_46
    if-nez v9, :cond_48

    iget-boolean v3, v13, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeNull:Z

    if-nez v3, :cond_48

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v6, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v3

    if-nez v3, :cond_48

    .line 470
    goto :goto_25

    .line 434
    .end local v39    # "propertyValue":Ljava/lang/Object;
    .end local v40    # "valueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
    .end local v41    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .local v4, "propertyValue":Ljava/lang/Object;
    .local v7, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .local v15, "valueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
    :cond_47
    move-object/from16 v39, v4

    move-object/from16 v41, v7

    move-object/from16 v40, v15

    .line 474
    .end local v4    # "propertyValue":Ljava/lang/Object;
    .end local v7    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v15    # "valueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
    .restart local v39    # "propertyValue":Ljava/lang/Object;
    .restart local v40    # "valueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
    .restart local v41    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_48
    move-object/from16 v4, v39

    .end local v39    # "propertyValue":Ljava/lang/Object;
    .restart local v4    # "propertyValue":Ljava/lang/Object;
    :goto_24
    if-eqz v33, :cond_4b

    if-eqz v4, :cond_4b

    if-eqz v28, :cond_4b

    .line 475
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v8, v3, :cond_49

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v8, v3, :cond_49

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v8, v3, :cond_49

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v8, v3, :cond_49

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v8, v3, :cond_49

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v8, v3, :cond_4a

    :cond_49
    instance-of v3, v4, Ljava/lang/Number;

    if-eqz v3, :cond_4a

    move-object v3, v4

    check-cast v3, Ljava/lang/Number;

    .line 483
    invoke-virtual {v3}, Ljava/lang/Number;->byteValue()B

    move-result v3

    if-nez v3, :cond_4a

    .line 484
    goto :goto_25

    .line 485
    :cond_4a
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v8, v3, :cond_4b

    instance-of v3, v4, Ljava/lang/Boolean;

    if-eqz v3, :cond_4b

    move-object v3, v4

    check-cast v3, Ljava/lang/Boolean;

    .line 487
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_4b

    .line 488
    nop

    .line 299
    .end local v4    # "propertyValue":Ljava/lang/Object;
    .end local v5    # "key":Ljava/lang/String;
    .end local v8    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "fieldInfoName":Ljava/lang/String;
    .end local v11    # "propertyValueInt":I
    .end local v13    # "fieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v30    # "propertyValueLong":J
    .end local v32    # "propertyValueBoolean":Z
    .end local v33    # "propertyValueGot":Z
    .end local v34    # "valueGot":Z
    .end local v35    # "apply":Z
    .end local v36    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    .end local v37    # "applyName":Z
    .end local v38    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    .end local v40    # "valueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
    .end local v41    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .local v12, "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    .restart local v14    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    .restart local v15    # "valueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
    :goto_25
    const/4 v12, 0x0

    const/16 v16, 0x2c

    .end local v12    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    .end local v14    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    .end local v15    # "valueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
    .restart local v36    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    .restart local v38    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    .restart local v40    # "valueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
    goto/16 :goto_34

    .line 492
    .restart local v4    # "propertyValue":Ljava/lang/Object;
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v8    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v10    # "fieldInfoName":Ljava/lang/String;
    .restart local v11    # "propertyValueInt":I
    .local v12, "originalValue":Ljava/lang/Object;
    .restart local v13    # "fieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v30    # "propertyValueLong":J
    .restart local v32    # "propertyValueBoolean":Z
    .restart local v33    # "propertyValueGot":Z
    .restart local v34    # "valueGot":Z
    .restart local v35    # "apply":Z
    .restart local v37    # "applyName":Z
    .restart local v41    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_4b
    if-eqz v17, :cond_4e

    .line 495
    iget v3, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v7, 0x1

    add-int/2addr v3, v7

    .line 496
    .local v3, "newcount":I
    iget-object v7, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v7, v7

    if-le v3, v7, :cond_4d

    .line 497
    iget-object v7, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v7, :cond_4c

    .line 498
    invoke-virtual {v6, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_26

    .line 500
    :cond_4c
    invoke-virtual {v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    .line 501
    const/4 v3, 0x1

    .line 504
    :cond_4d
    :goto_26
    iget-object v7, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v15, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v16, 0x2c

    aput-char v16, v7, v15

    .line 505
    iput v3, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 507
    .end local v3    # "newcount":I
    iget v3, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v7, v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v3, v7

    if-eqz v3, :cond_4f

    .line 508
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    goto :goto_27

    .line 492
    :cond_4e
    const/16 v16, 0x2c

    .line 512
    :cond_4f
    :goto_27
    if-eq v5, v10, :cond_51

    .line 513
    if-nez v9, :cond_50

    .line 514
    const/4 v3, 0x1

    invoke-virtual {v6, v5, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    .line 517
    :cond_50
    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    move-object/from16 v39, v5

    move-object/from16 v44, v10

    move-object/from16 v45, v12

    move-object/from16 v3, v41

    const/4 v12, 0x0

    goto/16 :goto_33

    .line 518
    :cond_51
    if-eq v12, v4, :cond_53

    .line 519
    if-nez v9, :cond_52

    .line 520
    invoke-virtual {v13, v2}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writePrefix(Lcom/alibaba/fastjson/serializer/JSONSerializer;)V

    .line 522
    :cond_52
    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    move-object/from16 v39, v5

    move-object/from16 v44, v10

    move-object/from16 v45, v12

    move-object/from16 v3, v41

    const/4 v12, 0x0

    goto/16 :goto_33

    .line 524
    :cond_53
    if-nez v9, :cond_58

    .line 525
    if-eqz v27, :cond_57

    .line 528
    iget-object v3, v13, Lcom/alibaba/fastjson/serializer/FieldSerializer;->name_chars:[C

    .line 529
    .local v3, "c":[C
    const/4 v7, 0x0

    .line 530
    .local v7, "off":I
    array-length v15, v3

    .line 532
    .local v15, "len":I
    move-object/from16 v39, v5

    .end local v5    # "key":Ljava/lang/String;
    .local v39, "key":Ljava/lang/String;
    iget v5, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v5, v15

    .line 533
    .local v5, "newcount":I
    move/from16 v42, v7

    .end local v7    # "off":I
    .local v42, "off":I
    iget-object v7, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v7, v7

    if-le v5, v7, :cond_56

    .line 534
    iget-object v7, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v7, :cond_54

    .line 535
    invoke-virtual {v6, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    move/from16 v43, v5

    move-object/from16 v44, v10

    move-object/from16 v45, v12

    goto :goto_29

    .line 534
    :cond_54
    move/from16 v7, v42

    .line 538
    .end local v42    # "off":I
    .restart local v7    # "off":I
    :goto_28
    move/from16 v43, v5

    .end local v5    # "newcount":I
    .local v43, "newcount":I
    iget-object v5, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v5, v5

    move-object/from16 v44, v10

    .end local v10    # "fieldInfoName":Ljava/lang/String;
    .local v44, "fieldInfoName":Ljava/lang/String;
    iget v10, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v5, v10

    .line 539
    .local v5, "rest":I
    iget-object v10, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v45, v12

    .end local v12    # "originalValue":Ljava/lang/Object;
    .local v45, "originalValue":Ljava/lang/Object;
    iget v12, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {v3, v7, v10, v12, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 540
    iget-object v10, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v10, v10

    iput v10, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 541
    invoke-virtual {v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    .line 542
    sub-int/2addr v15, v5

    .line 543
    add-int/2addr v7, v5

    .line 544
    .end local v5    # "rest":I
    iget-object v5, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v5, v5

    if-gt v15, v5, :cond_55

    .line 545
    move v5, v15

    .end local v43    # "newcount":I
    .local v5, "newcount":I
    goto :goto_2a

    .line 544
    .end local v5    # "newcount":I
    .restart local v43    # "newcount":I
    :cond_55
    move/from16 v5, v43

    move-object/from16 v10, v44

    move-object/from16 v12, v45

    goto :goto_28

    .line 533
    .end local v7    # "off":I
    .end local v43    # "newcount":I
    .end local v44    # "fieldInfoName":Ljava/lang/String;
    .end local v45    # "originalValue":Ljava/lang/Object;
    .restart local v5    # "newcount":I
    .restart local v10    # "fieldInfoName":Ljava/lang/String;
    .restart local v12    # "originalValue":Ljava/lang/Object;
    .restart local v42    # "off":I
    :cond_56
    move/from16 v43, v5

    move-object/from16 v44, v10

    move-object/from16 v45, v12

    .line 548
    .end local v5    # "newcount":I
    .end local v10    # "fieldInfoName":Ljava/lang/String;
    .end local v12    # "originalValue":Ljava/lang/Object;
    .restart local v43    # "newcount":I
    .restart local v44    # "fieldInfoName":Ljava/lang/String;
    .restart local v45    # "originalValue":Ljava/lang/Object;
    :goto_29
    move/from16 v7, v42

    move/from16 v5, v43

    .end local v42    # "off":I
    .end local v43    # "newcount":I
    .restart local v5    # "newcount":I
    .restart local v7    # "off":I
    :goto_2a
    iget-object v10, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v12, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {v3, v7, v10, v12, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 549
    iput v5, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 550
    .end local v3    # "c":[C
    .end local v5    # "newcount":I
    .end local v7    # "off":I
    .end local v15    # "len":I
    goto :goto_2b

    .line 552
    .end local v39    # "key":Ljava/lang/String;
    .end local v44    # "fieldInfoName":Ljava/lang/String;
    .end local v45    # "originalValue":Ljava/lang/Object;
    .local v5, "key":Ljava/lang/String;
    .restart local v10    # "fieldInfoName":Ljava/lang/String;
    .restart local v12    # "originalValue":Ljava/lang/Object;
    :cond_57
    move-object/from16 v39, v5

    move-object/from16 v44, v10

    move-object/from16 v45, v12

    .end local v5    # "key":Ljava/lang/String;
    .end local v10    # "fieldInfoName":Ljava/lang/String;
    .end local v12    # "originalValue":Ljava/lang/Object;
    .restart local v39    # "key":Ljava/lang/String;
    .restart local v44    # "fieldInfoName":Ljava/lang/String;
    .restart local v45    # "originalValue":Ljava/lang/Object;
    invoke-virtual {v13, v2}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writePrefix(Lcom/alibaba/fastjson/serializer/JSONSerializer;)V

    goto :goto_2b

    .line 524
    .end local v39    # "key":Ljava/lang/String;
    .end local v44    # "fieldInfoName":Ljava/lang/String;
    .end local v45    # "originalValue":Ljava/lang/Object;
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v10    # "fieldInfoName":Ljava/lang/String;
    .restart local v12    # "originalValue":Ljava/lang/Object;
    :cond_58
    move-object/from16 v39, v5

    move-object/from16 v44, v10

    move-object/from16 v45, v12

    .line 556
    .end local v5    # "key":Ljava/lang/String;
    .end local v10    # "fieldInfoName":Ljava/lang/String;
    .end local v12    # "originalValue":Ljava/lang/Object;
    .restart local v39    # "key":Ljava/lang/String;
    .restart local v44    # "fieldInfoName":Ljava/lang/String;
    .restart local v45    # "originalValue":Ljava/lang/Object;
    :goto_2b
    if-eqz v34, :cond_64

    if-nez v33, :cond_64

    .line 557
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v8, v3, :cond_60

    .line 560
    const/high16 v3, -0x80000000

    if-ne v11, v3, :cond_59

    .line 561
    const-string v3, "-2147483648"

    invoke-virtual {v6, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    move-object/from16 v3, v41

    const/4 v12, 0x0

    goto/16 :goto_33

    .line 564
    :cond_59
    if-gez v11, :cond_5a

    neg-int v3, v11

    goto :goto_2c

    :cond_5a
    move v3, v11

    .line 565
    .local v3, "x":I
    :goto_2c
    const/4 v5, 0x0

    .line 566
    .local v5, "j":I
    :goto_2d
    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sizeTable:[I

    aget v7, v7, v5

    if-gt v3, v7, :cond_5f

    .line 567
    add-int/lit8 v7, v5, 0x1

    .line 568
    .local v7, "size":I
    nop

    .line 572
    .end local v5    # "j":I
    if-gez v11, :cond_5b

    .line 573
    add-int/lit8 v7, v7, 0x1

    .line 576
    :cond_5b
    const/4 v5, 0x0

    .line 577
    .local v5, "flushed":Z
    iget v10, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v10, v7

    .line 578
    .local v10, "newcount":I
    iget-object v12, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v12, v12

    if-le v10, v12, :cond_5d

    .line 579
    iget-object v12, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v12, :cond_5c

    .line 580
    invoke-virtual {v6, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_2e

    .line 582
    :cond_5c
    new-array v12, v7, [C

    .line 583
    .local v12, "chars":[C
    int-to-long v14, v11

    invoke-static {v14, v15, v7, v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    .line 584
    array-length v14, v12

    const/4 v15, 0x0

    invoke-virtual {v6, v12, v15, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    .line 585
    const/4 v5, 0x1

    .line 589
    .end local v12    # "chars":[C
    :cond_5d
    :goto_2e
    if-nez v5, :cond_5e

    .line 590
    int-to-long v14, v11

    iget-object v12, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v14, v15, v10, v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    .line 591
    iput v10, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 593
    .end local v3    # "x":I
    .end local v5    # "flushed":Z
    .end local v7    # "size":I
    .end local v10    # "newcount":I
    :cond_5e
    move-object/from16 v3, v41

    const/4 v12, 0x0

    goto/16 :goto_33

    .line 565
    .restart local v3    # "x":I
    .local v5, "j":I
    :cond_5f
    add-int/lit8 v5, v5, 0x1

    goto :goto_2d

    .line 595
    .end local v3    # "x":I
    .end local v5    # "j":I
    :cond_60
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v8, v3, :cond_61

    .line 596
    iget-object v3, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-wide/from16 v14, v30

    .end local v30    # "propertyValueLong":J
    .local v14, "propertyValueLong":J
    invoke-virtual {v3, v14, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    move-wide/from16 v30, v14

    move-object/from16 v3, v41

    const/4 v12, 0x0

    goto/16 :goto_33

    .line 597
    .end local v14    # "propertyValueLong":J
    .restart local v30    # "propertyValueLong":J
    :cond_61
    move-wide/from16 v14, v30

    .end local v30    # "propertyValueLong":J
    .restart local v14    # "propertyValueLong":J
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v8, v3, :cond_63

    .line 598
    if-eqz v32, :cond_62

    .line 599
    iget-object v3, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    sget-object v5, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->true_chars:[C

    array-length v7, v5

    const/4 v10, 0x0

    invoke-virtual {v3, v5, v10, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    move-wide/from16 v30, v14

    move-object/from16 v3, v41

    const/4 v12, 0x0

    goto/16 :goto_33

    .line 601
    :cond_62
    iget-object v3, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    sget-object v5, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->false_chars:[C

    array-length v7, v5

    const/4 v10, 0x0

    invoke-virtual {v3, v5, v10, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    move-wide/from16 v30, v14

    move-object/from16 v3, v41

    const/4 v12, 0x0

    goto/16 :goto_33

    .line 597
    :cond_63
    move-wide/from16 v30, v14

    move-object/from16 v3, v41

    const/4 v12, 0x0

    goto/16 :goto_33

    .line 605
    .end local v14    # "propertyValueLong":J
    .restart local v30    # "propertyValueLong":J
    :cond_64
    if-nez v9, :cond_6f

    .line 606
    const-class v3, Ljava/lang/String;

    if-ne v8, v3, :cond_69

    .line 607
    iget v3, v13, Lcom/alibaba/fastjson/serializer/FieldSerializer;->features:I

    iget v5, v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->features:I

    or-int/2addr v3, v5

    .line 608
    .local v3, "serialzeFeatures":I
    if-nez v4, :cond_67

    .line 610
    iget v5, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v7, v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v5, v7

    if-nez v5, :cond_66

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v5, v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v5, v3

    if-eqz v5, :cond_65

    goto :goto_2f

    .line 615
    :cond_65
    invoke-virtual {v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_30

    .line 613
    :cond_66
    :goto_2f
    invoke-virtual {v6, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_30

    .line 618
    :cond_67
    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    .line 620
    .local v5, "propertyValueString":Ljava/lang/String;
    if-eqz v26, :cond_68

    .line 621
    invoke-virtual {v6, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    goto :goto_30

    .line 623
    :cond_68
    const/4 v7, 0x1

    const/4 v10, 0x0

    invoke-virtual {v6, v5, v10, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;CZ)V

    .line 626
    .end local v3    # "serialzeFeatures":I
    .end local v5    # "propertyValueString":Ljava/lang/String;
    :goto_30
    move-object/from16 v3, v41

    const/4 v12, 0x0

    goto :goto_33

    .line 627
    :cond_69
    move-object/from16 v3, v41

    .end local v41    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .local v3, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-boolean v5, v3, Lcom/alibaba/fastjson/util/FieldInfo;->isEnum:Z

    if-eqz v5, :cond_6e

    .line 628
    if-eqz v4, :cond_6d

    .line 629
    iget v5, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v7, v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v5, v7

    if-eqz v5, :cond_6c

    .line 630
    move-object v5, v4

    check-cast v5, Ljava/lang/Enum;

    .line 632
    .local v5, "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v7

    .line 633
    .local v7, "name":Ljava/lang/String;
    iget v10, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v12, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v12, v12, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v10, v12

    if-eqz v10, :cond_6a

    const/4 v10, 0x1

    goto :goto_31

    :cond_6a
    const/4 v10, 0x0

    .line 635
    .local v10, "userSingleQuote":Z
    :goto_31
    if-eqz v10, :cond_6b

    .line 636
    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    const/4 v12, 0x0

    goto :goto_32

    .line 638
    :cond_6b
    const/4 v12, 0x0

    invoke-virtual {v6, v7, v12, v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;CZ)V

    .line 640
    .end local v5    # "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    .end local v7    # "name":Ljava/lang/String;
    .end local v10    # "userSingleQuote":Z
    :goto_32
    goto :goto_33

    .line 641
    :cond_6c
    const/4 v12, 0x0

    move-object v5, v4

    check-cast v5, Ljava/lang/Enum;

    .line 642
    .restart local v5    # "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 643
    .end local v5    # "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    goto :goto_33

    .line 645
    :cond_6d
    const/4 v12, 0x0

    invoke-virtual {v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_33

    .line 648
    :cond_6e
    const/4 v12, 0x0

    invoke-virtual {v13, v2, v4}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V

    goto :goto_33

    .line 652
    .end local v3    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v41    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_6f
    move-object/from16 v3, v41

    const/4 v12, 0x0

    .end local v41    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v3    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-virtual {v13, v2, v4}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_2
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 657
    :goto_33
    const/4 v5, 0x1

    move/from16 v17, v5

    .line 299
    .end local v3    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v4    # "propertyValue":Ljava/lang/Object;
    .end local v8    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v11    # "propertyValueInt":I
    .end local v13    # "fieldSerializer":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v30    # "propertyValueLong":J
    .end local v32    # "propertyValueBoolean":Z
    .end local v33    # "propertyValueGot":Z
    .end local v34    # "valueGot":Z
    .end local v35    # "apply":Z
    .end local v37    # "applyName":Z
    .end local v39    # "key":Ljava/lang/String;
    .end local v44    # "fieldInfoName":Ljava/lang/String;
    .end local v45    # "originalValue":Ljava/lang/Object;
    :goto_34
    add-int/lit8 v8, v25, 0x1

    move-object/from16 v3, p2

    move/from16 v13, v23

    move-object/from16 v7, v24

    move/from16 v10, v26

    move/from16 v5, v27

    move/from16 v11, v28

    move-object/from16 v4, v29

    move-object/from16 v14, v36

    move-object/from16 v12, v38

    move-object/from16 v15, v40

    .end local v25    # "i":I
    .local v8, "i":I
    goto/16 :goto_f

    .line 695
    .end local v8    # "i":I
    .end local v17    # "commaFlag":Z
    .end local v18    # "seperator":C
    .end local v19    # "startSeperator":C
    .end local v20    # "isWriteClassName":Z
    .end local v21    # "newSeperator":C
    .end local v23    # "endSeperator":C
    .end local v26    # "useSingleQuote":Z
    .end local v27    # "directWritePrefix":Z
    .end local v28    # "notWriteDefaultValue":Z
    .end local v29    # "filters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    .end local v36    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    .end local v38    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    .end local v40    # "valueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
    :catchall_2
    move-exception v0

    move-object/from16 v7, p2

    :goto_35
    move-object/from16 v10, p3

    move-object v5, v0

    :goto_36
    move-object/from16 v4, v22

    move-object/from16 v3, v24

    goto/16 :goto_40

    .line 687
    :catch_2
    move-exception v0

    move-object/from16 v7, p2

    :goto_37
    move-object v5, v0

    :goto_38
    move-object/from16 v4, v22

    move-object/from16 v3, v24

    goto/16 :goto_3e

    .line 695
    .end local v24    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .local v7, "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    :catchall_3
    move-exception v0

    move-object/from16 v10, p3

    move-object v5, v0

    move-object v3, v7

    move-object/from16 v4, v22

    move-object/from16 v7, p2

    .end local v7    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v24    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    goto/16 :goto_40

    .line 687
    .end local v24    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v7    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    :catch_3
    move-exception v0

    move-object v5, v0

    move-object v3, v7

    move-object/from16 v4, v22

    move-object/from16 v7, p2

    .end local v7    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v24    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    goto/16 :goto_3e

    .line 299
    .end local v24    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .local v4, "filters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    .local v5, "directWritePrefix":Z
    .restart local v7    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v8    # "i":I
    .local v10, "useSingleQuote":Z
    .local v11, "notWriteDefaultValue":Z
    .local v12, "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    .local v14, "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    .local v15, "valueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
    .restart local v17    # "commaFlag":Z
    .restart local v18    # "seperator":C
    .restart local v19    # "startSeperator":C
    .restart local v20    # "isWriteClassName":Z
    .restart local v21    # "newSeperator":C
    .restart local v23    # "endSeperator":C
    :cond_70
    move-object/from16 v29, v4

    move/from16 v27, v5

    move-object/from16 v24, v7

    move/from16 v25, v8

    move/from16 v26, v10

    move/from16 v28, v11

    move-object/from16 v38, v12

    move-object/from16 v36, v14

    move-object/from16 v40, v15

    const/4 v12, 0x0

    const/16 v16, 0x2c

    .line 661
    .end local v4    # "filters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    .end local v5    # "directWritePrefix":Z
    .end local v7    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v8    # "i":I
    .end local v10    # "useSingleQuote":Z
    .end local v11    # "notWriteDefaultValue":Z
    .end local v12    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    .end local v14    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    .end local v15    # "valueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
    .restart local v24    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v26    # "useSingleQuote":Z
    .restart local v27    # "directWritePrefix":Z
    .restart local v28    # "notWriteDefaultValue":Z
    .restart local v29    # "filters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    .restart local v36    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    .restart local v38    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    .restart local v40    # "valueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
    :try_start_16
    iget-object v3, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->afterFilters:Ljava/util/List;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_7
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    if-eqz v3, :cond_73

    .line 662
    if-eqz v17, :cond_71

    const/16 v11, 0x2c

    goto :goto_39

    :cond_71
    const/4 v11, 0x0

    :goto_39
    move v3, v11

    .line 663
    .local v3, "afterOperator":C
    :try_start_17
    iget-object v4, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->afterFilters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_72

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/fastjson/serializer/AfterFilter;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_2
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 664
    .local v5, "afterFilter":Lcom/alibaba/fastjson/serializer/AfterFilter;
    move-object/from16 v7, p2

    :try_start_18
    invoke-virtual {v5, v2, v7, v3}, Lcom/alibaba/fastjson/serializer/AfterFilter;->writeAfter(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    move-result v8
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_4
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    move v3, v8

    .line 665
    .end local v5    # "afterFilter":Lcom/alibaba/fastjson/serializer/AfterFilter;
    goto :goto_3a

    .line 695
    .end local v3    # "afterOperator":C
    .end local v17    # "commaFlag":Z
    .end local v18    # "seperator":C
    .end local v19    # "startSeperator":C
    .end local v20    # "isWriteClassName":Z
    .end local v21    # "newSeperator":C
    .end local v23    # "endSeperator":C
    .end local v26    # "useSingleQuote":Z
    .end local v27    # "directWritePrefix":Z
    .end local v28    # "notWriteDefaultValue":Z
    .end local v29    # "filters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    .end local v36    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    .end local v38    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    .end local v40    # "valueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
    :catchall_4
    move-exception v0

    goto :goto_35

    .line 687
    :catch_4
    move-exception v0

    goto :goto_37

    .line 663
    .restart local v3    # "afterOperator":C
    .restart local v17    # "commaFlag":Z
    .restart local v18    # "seperator":C
    .restart local v19    # "startSeperator":C
    .restart local v20    # "isWriteClassName":Z
    .restart local v21    # "newSeperator":C
    .restart local v23    # "endSeperator":C
    .restart local v26    # "useSingleQuote":Z
    .restart local v27    # "directWritePrefix":Z
    .restart local v28    # "notWriteDefaultValue":Z
    .restart local v29    # "filters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    .restart local v36    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    .restart local v38    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    .restart local v40    # "valueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
    :cond_72
    move-object/from16 v7, p2

    goto :goto_3b

    .line 661
    .end local v3    # "afterOperator":C
    :cond_73
    move-object/from16 v7, p2

    .line 668
    :goto_3b
    move-object/from16 v3, v24

    .end local v24    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .local v3, "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    :try_start_19
    array-length v4, v3
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_6
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    if-lez v4, :cond_74

    :try_start_1a
    iget v4, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v5, v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_74

    .line 669
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->decrementIdent()V

    .line 670
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_5
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    goto :goto_3c

    .line 695
    .end local v17    # "commaFlag":Z
    .end local v18    # "seperator":C
    .end local v19    # "startSeperator":C
    .end local v20    # "isWriteClassName":Z
    .end local v21    # "newSeperator":C
    .end local v23    # "endSeperator":C
    .end local v26    # "useSingleQuote":Z
    .end local v27    # "directWritePrefix":Z
    .end local v28    # "notWriteDefaultValue":Z
    .end local v29    # "filters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    .end local v36    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    .end local v38    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    .end local v40    # "valueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
    :catchall_5
    move-exception v0

    move-object/from16 v10, p3

    move-object v5, v0

    move-object/from16 v4, v22

    goto/16 :goto_40

    .line 687
    :catch_5
    move-exception v0

    move-object v5, v0

    move-object/from16 v4, v22

    goto/16 :goto_3e

    .line 675
    .restart local v17    # "commaFlag":Z
    .restart local v18    # "seperator":C
    .restart local v19    # "startSeperator":C
    .restart local v20    # "isWriteClassName":Z
    .restart local v21    # "newSeperator":C
    .restart local v23    # "endSeperator":C
    .restart local v26    # "useSingleQuote":Z
    .restart local v27    # "directWritePrefix":Z
    .restart local v28    # "notWriteDefaultValue":Z
    .restart local v29    # "filters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    .restart local v36    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    .restart local v38    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    .restart local v40    # "valueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
    :cond_74
    :goto_3c
    :try_start_1b
    iget v4, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    .line 676
    .local v4, "newcount":I
    iget-object v5, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v5, v5
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_6
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    if-le v4, v5, :cond_76

    .line 677
    :try_start_1c
    iget-object v5, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v5, :cond_75

    .line 678
    invoke-virtual {v6, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_3d

    .line 680
    :cond_75
    invoke-virtual {v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_5
    .catchall {:try_start_1c .. :try_end_1c} :catchall_5

    .line 681
    const/4 v4, 0x1

    .line 684
    :cond_76
    :goto_3d
    :try_start_1d
    iget-object v5, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v8, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v23, v5, v8

    .line 685
    iput v4, v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_6
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    .line 695
    .end local v4    # "newcount":I
    .end local v17    # "commaFlag":Z
    .end local v18    # "seperator":C
    .end local v19    # "startSeperator":C
    .end local v20    # "isWriteClassName":Z
    .end local v21    # "newSeperator":C
    .end local v23    # "endSeperator":C
    .end local v26    # "useSingleQuote":Z
    .end local v27    # "directWritePrefix":Z
    .end local v28    # "notWriteDefaultValue":Z
    .end local v29    # "filters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    .end local v36    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    .end local v38    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    .end local v40    # "valueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
    move-object/from16 v4, v22

    .end local v22    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .local v4, "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    iput-object v4, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 696
    nop

    .line 697
    return-void

    .line 695
    .end local v4    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v22    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    :catchall_6
    move-exception v0

    move-object/from16 v4, v22

    move-object/from16 v10, p3

    move-object v5, v0

    .end local v22    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v4    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    goto/16 :goto_40

    .line 687
    .end local v4    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v22    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    :catch_6
    move-exception v0

    move-object/from16 v4, v22

    move-object v5, v0

    .end local v22    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v4    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    goto :goto_3e

    .line 695
    .end local v3    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v4    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v22    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v24    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    :catchall_7
    move-exception v0

    move-object/from16 v7, p2

    move-object/from16 v4, v22

    move-object/from16 v3, v24

    move-object/from16 v10, p3

    move-object v5, v0

    .end local v22    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v24    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v3    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v4    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    goto/16 :goto_40

    .line 687
    .end local v3    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v4    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v22    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v24    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    :catch_7
    move-exception v0

    move-object/from16 v7, p2

    move-object/from16 v4, v22

    move-object/from16 v3, v24

    move-object v5, v0

    .end local v22    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v24    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v3    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v4    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    goto :goto_3e

    .line 695
    .end local v3    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v4    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v7    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v22    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    :catchall_8
    move-exception v0

    move-object/from16 v4, v22

    move-object/from16 v46, v7

    move-object v7, v3

    move-object/from16 v3, v46

    move-object/from16 v10, p3

    move-object v5, v0

    .end local v7    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v22    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v3    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v4    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    goto :goto_40

    .line 687
    .end local v3    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v4    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v7    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v22    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    :catch_8
    move-exception v0

    move-object/from16 v4, v22

    move-object/from16 v46, v7

    move-object v7, v3

    move-object/from16 v3, v46

    move-object v5, v0

    .end local v7    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v22    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v3    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v4    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    goto :goto_3e

    .line 695
    .end local v3    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v4    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v7    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .local v8, "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    :catchall_9
    move-exception v0

    move-object v4, v8

    move-object/from16 v46, v7

    move-object v7, v3

    move-object/from16 v3, v46

    move-object/from16 v10, p3

    move-object v5, v0

    .end local v7    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v8    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v3    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v4    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    goto :goto_40

    .line 687
    .end local v3    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v4    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v7    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v8    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    :catch_9
    move-exception v0

    move-object v4, v8

    move-object/from16 v46, v7

    move-object v7, v3

    move-object/from16 v3, v46

    move-object v5, v0

    .line 688
    .end local v7    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v8    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v3    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v4    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .local v5, "e":Ljava/lang/Exception;
    :goto_3e
    :try_start_1e
    const-string/jumbo v8, "write javaBean error, fastjson version 1.1.70"
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_b

    .line 690
    .local v8, "errorMessage":Ljava/lang/String;
    move-object/from16 v10, p3

    if-eqz v10, :cond_77

    .line 691
    :try_start_1f
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", fieldName : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v8, v11

    .line 693
    :cond_77
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v11, v8, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v3    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v4    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v6    # "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .end local v9    # "writeAsArray":Z
    .end local p1    # "serializer":Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .end local p2    # "object":Ljava/lang/Object;
    .end local p3    # "fieldName":Ljava/lang/Object;
    .end local p4    # "fieldType":Ljava/lang/reflect/Type;
    throw v11
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_a

    .line 695
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v8    # "errorMessage":Ljava/lang/String;
    .restart local v3    # "getters":[Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .restart local v4    # "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v6    # "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .restart local v9    # "writeAsArray":Z
    .restart local p1    # "serializer":Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .restart local p2    # "object":Ljava/lang/Object;
    .restart local p3    # "fieldName":Ljava/lang/Object;
    .restart local p4    # "fieldType":Ljava/lang/reflect/Type;
    :catchall_a
    move-exception v0

    goto :goto_3f

    :catchall_b
    move-exception v0

    move-object/from16 v10, p3

    :goto_3f
    move-object v5, v0

    :goto_40
    iput-object v4, v2, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 696
    throw v5
.end method

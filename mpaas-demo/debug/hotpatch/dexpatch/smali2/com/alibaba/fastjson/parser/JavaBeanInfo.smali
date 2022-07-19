.class Lcom/alibaba/fastjson/parser/JavaBeanInfo;
.super Ljava/lang/Object;
.source "JavaBeanInfo.java"


# instance fields
.field final creatorConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field public final creatorConstructorParameters:[Ljava/lang/String;

.field final defaultConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field final defaultConstructorParameterSize:I

.field final factoryMethod:Ljava/lang/reflect/Method;

.field final fields:[Lcom/alibaba/fastjson/util/FieldInfo;

.field final jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

.field ordered:Z

.field public final parserFeatures:I

.field final sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

.field final supportBeanToArray:Z

.field public final typeKey:Ljava/lang/String;

.field public final typeName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;[Lcom/alibaba/fastjson/util/FieldInfo;[Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/annotation/JSONType;[Ljava/lang/String;)V
    .locals 16
    .param p4, "factoryMethod"    # Ljava/lang/reflect/Method;
    .param p5, "fields"    # [Lcom/alibaba/fastjson/util/FieldInfo;
    .param p6, "sortedFields"    # [Lcom/alibaba/fastjson/util/FieldInfo;
    .param p7, "jsonType"    # Lcom/alibaba/fastjson/annotation/JSONType;
    .param p8, "creatorConstructorParameters"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "[",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Lcom/alibaba/fastjson/annotation/JSONType;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 46
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local p3, "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->ordered:Z

    .line 48
    iput-object v1, v0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    .line 49
    move-object/from16 v7, p3

    iput-object v7, v0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 50
    iput-object v2, v0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    .line 51
    iput-object v3, v0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 52
    iput-object v4, v0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    .line 54
    const/4 v8, 0x0

    if-eqz v5, :cond_0

    array-length v9, v5

    array-length v10, v3

    if-ne v9, v10, :cond_0

    .line 56
    iput-object v8, v0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructorParameters:[Ljava/lang/String;

    goto :goto_0

    .line 58
    :cond_0
    iput-object v5, v0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructorParameters:[Ljava/lang/String;

    .line 61
    :goto_0
    const/4 v9, 0x0

    .line 62
    .local v9, "parserFeatures":I
    if-eqz v4, :cond_4

    .line 63
    invoke-interface/range {p7 .. p7}, Lcom/alibaba/fastjson/annotation/JSONType;->typeName()Ljava/lang/String;

    move-result-object v10

    .line 64
    .local v10, "typeName":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_1

    move-object v11, v10

    goto :goto_1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    :goto_1
    iput-object v11, v0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->typeName:Ljava/lang/String;

    .line 66
    invoke-interface/range {p7 .. p7}, Lcom/alibaba/fastjson/annotation/JSONType;->typeKey()Ljava/lang/String;

    move-result-object v11

    .line 67
    .local v11, "typeKey":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_2

    move-object v8, v11

    :cond_2
    iput-object v8, v0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->typeKey:Ljava/lang/String;

    .line 69
    invoke-interface/range {p7 .. p7}, Lcom/alibaba/fastjson/annotation/JSONType;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v8

    array-length v12, v8

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v12, :cond_3

    aget-object v14, v8, v13

    .line 70
    .local v14, "feature":Lcom/alibaba/fastjson/parser/Feature;
    iget v15, v14, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    or-int/2addr v9, v15

    .line 69
    .end local v14    # "feature":Lcom/alibaba/fastjson/parser/Feature;
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 72
    .end local v10    # "typeName":Ljava/lang/String;
    .end local v11    # "typeKey":Ljava/lang/String;
    :cond_3
    goto :goto_3

    .line 73
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->typeName:Ljava/lang/String;

    .line 74
    iput-object v8, v0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->typeKey:Ljava/lang/String;

    .line 76
    :goto_3
    iput v9, v0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->parserFeatures:I

    .line 78
    const/4 v8, 0x0

    .line 79
    .local v8, "supportBeanToArray":Z
    if-eqz v4, :cond_6

    .line 80
    invoke-interface/range {p7 .. p7}, Lcom/alibaba/fastjson/annotation/JSONType;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v10

    array-length v11, v10

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v11, :cond_6

    aget-object v13, v10, v12

    .line 81
    .local v13, "feature":Lcom/alibaba/fastjson/parser/Feature;
    sget-object v14, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    if-ne v13, v14, :cond_5

    .line 82
    const/4 v8, 0x1

    .line 80
    .end local v13    # "feature":Lcom/alibaba/fastjson/parser/Feature;
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 86
    :cond_6
    iput-boolean v8, v0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->supportBeanToArray:Z

    .line 88
    move-object/from16 v10, p6

    invoke-direct {v0, v3, v10}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->computeSortedFields([Lcom/alibaba/fastjson/util/FieldInfo;[Lcom/alibaba/fastjson/util/FieldInfo;)[Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object v10

    .line 89
    .end local p6    # "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    .local v10, "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-static {v3, v10}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    move-object v11, v3

    goto :goto_5

    :cond_7
    move-object v11, v10

    :goto_5
    iput-object v11, v0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 91
    if-eqz v1, :cond_8

    .line 92
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    goto :goto_6

    :cond_8
    if-eqz v2, :cond_9

    .line 94
    invoke-virtual/range {p4 .. p4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    goto :goto_6

    :cond_9
    nop

    :goto_6
    iput v6, v0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->defaultConstructorParameterSize:I

    .line 96
    return-void
.end method

.method static addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z
    .locals 5
    .param p1, "field"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .param p2, "fieldOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Z)Z"
        }
    .end annotation

    .line 182
    .local p0, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    if-nez p2, :cond_2

    .line 183
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 184
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 185
    .local v2, "item":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v3, v2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    iget-object v4, p1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 186
    iget-boolean v3, v2, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p1, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    if-nez v3, :cond_0

    .line 187
    goto :goto_1

    .line 190
    :cond_0
    const/4 v3, 0x0

    return v3

    .line 183
    .end local v2    # "item":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_2
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    const/4 v0, 0x1

    return v0
.end method

.method public static build(Ljava/lang/Class;ILjava/lang/reflect/Type;ZZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/parser/JavaBeanInfo;
    .locals 48
    .param p1, "classModifiers"    # I
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldOnly"    # Z
    .param p4, "jsonTypeSupport"    # Z
    .param p5, "jsonFieldSupport"    # Z
    .param p6, "fieldGenericSupport"    # Z
    .param p7, "propertyNamingStrategy"    # Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I",
            "Ljava/lang/reflect/Type;",
            "ZZZZ",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")",
            "Lcom/alibaba/fastjson/parser/JavaBeanInfo;"
        }
    .end annotation

    .line 209
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v12, p0

    move/from16 v13, p1

    move/from16 v14, p3

    move-object/from16 v15, p7

    const/4 v9, 0x0

    .line 210
    .local v9, "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 211
    .local v11, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v10, v0

    .line 213
    .local v10, "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v8

    .line 215
    .local v8, "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->isKotlin(Ljava/lang/Class;)Z

    move-result v16

    .line 216
    .local v16, "kotlin":Z
    const/4 v1, 0x0

    .line 217
    .local v1, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    and-int/lit16 v0, v13, 0x400

    const/4 v7, 0x0

    const/4 v6, 0x1

    if-nez v0, :cond_2

    array-length v0, v8

    if-eq v0, v6, :cond_0

    if-nez v16, :cond_2

    .line 219
    :cond_0
    :try_start_0
    new-array v0, v7, [Ljava/lang/Class;

    invoke-virtual {v12, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 222
    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 224
    :goto_0
    if-nez v1, :cond_2

    .line 225
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_2

    and-int/lit8 v0, v13, 0x8

    if-nez v0, :cond_2

    .line 226
    array-length v0, v8

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    aget-object v3, v8, v2

    .line 227
    .local v3, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 228
    .local v4, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v5, v4

    if-ne v5, v6, :cond_1

    aget-object v5, v4, v7

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 229
    move-object v1, v3

    .line 230
    move-object v0, v1

    goto :goto_2

    .line 226
    .end local v3    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_1
    add-int/lit8 v2, v2, 0x1

    const/4 v6, 0x1

    goto :goto_1

    .line 237
    :cond_2
    move-object v0, v1

    .end local v1    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v0, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_2
    const/4 v1, 0x0

    .line 238
    .local v1, "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/16 v18, 0x0

    .line 239
    .local v18, "creatorConstructorParameters":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 242
    .local v2, "factoryMethod":Ljava/lang/reflect/Method;
    const-string/jumbo v3, "multi-json creator"

    if-eqz v14, :cond_3

    .line 243
    const/4 v4, 0x0

    move-object/from16 v20, v1

    move-object v15, v2

    move-object v7, v4

    .local v4, "methods":[Ljava/lang/reflect/Method;
    goto/16 :goto_6

    .line 245
    .end local v4    # "methods":[Ljava/lang/reflect/Method;
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .local v4, "methodList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    move-object/from16 v5, p0

    .local v5, "cls":Ljava/lang/Class;
    :goto_3
    if-eqz v5, :cond_9

    const-class v6, Ljava/lang/Object;

    if-eq v5, v6, :cond_9

    .line 248
    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    .line 249
    .local v6, "declaredMethods":[Ljava/lang/reflect/Method;
    array-length v7, v6

    move-object/from16 v20, v1

    const/4 v1, 0x0

    .end local v1    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v20, "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_4
    if-ge v1, v7, :cond_8

    move/from16 v21, v7

    aget-object v7, v6, v1

    .line 250
    .local v7, "method":Ljava/lang/reflect/Method;
    move-object/from16 v22, v6

    .end local v6    # "declaredMethods":[Ljava/lang/reflect/Method;
    .local v22, "declaredMethods":[Ljava/lang/reflect/Method;
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v6

    .line 252
    .local v6, "modifier":I
    and-int/lit8 v23, v6, 0x8

    if-eqz v23, :cond_5

    .line 253
    const-class v15, Lcom/alibaba/fastjson/annotation/JSONCreator;

    invoke-virtual {v7, v15}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 254
    if-nez v2, :cond_4

    .line 258
    move-object v2, v7

    goto :goto_5

    .line 255
    :cond_4
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v1, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 263
    :cond_5
    and-int/lit8 v15, v6, 0x2

    if-nez v15, :cond_7

    and-int/lit16 v15, v6, 0x100

    if-nez v15, :cond_7

    and-int/lit8 v15, v6, 0x4

    if-eqz v15, :cond_6

    .line 264
    goto :goto_5

    .line 267
    :cond_6
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    .end local v6    # "modifier":I
    .end local v7    # "method":Ljava/lang/reflect/Method;
    :cond_7
    :goto_5
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v15, p7

    move/from16 v7, v21

    move-object/from16 v6, v22

    goto :goto_4

    .end local v22    # "declaredMethods":[Ljava/lang/reflect/Method;
    .local v6, "declaredMethods":[Ljava/lang/reflect/Method;
    :cond_8
    move-object/from16 v22, v6

    .line 247
    .end local v6    # "declaredMethods":[Ljava/lang/reflect/Method;
    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    move-object/from16 v15, p7

    move-object/from16 v1, v20

    const/4 v7, 0x0

    goto :goto_3

    .end local v20    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v1    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_9
    move-object/from16 v20, v1

    .line 271
    .end local v1    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v5    # "cls":Ljava/lang/Class;
    .restart local v20    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/reflect/Method;

    .line 272
    .local v1, "methods":[Ljava/lang/reflect/Method;
    invoke-interface {v4, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object v7, v1

    move-object v15, v2

    .line 275
    .end local v1    # "methods":[Ljava/lang/reflect/Method;
    .end local v2    # "factoryMethod":Ljava/lang/reflect/Method;
    .end local v4    # "methodList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    .local v7, "methods":[Ljava/lang/reflect/Method;
    .local v15, "factoryMethod":Ljava/lang/reflect/Method;
    :goto_6
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    .line 277
    .local v6, "declaredFields":[Ljava/lang/reflect/Field;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-nez v1, :cond_b

    and-int/lit16 v1, v13, 0x400

    if-eqz v1, :cond_a

    goto :goto_7

    :cond_a
    const/4 v1, 0x0

    goto :goto_8

    :cond_b
    :goto_7
    const/4 v1, 0x1

    :goto_8
    move/from16 v21, v1

    .line 279
    .local v21, "isInterfaceOrAbstract":Z
    const/16 v22, 0x0

    if-eqz v0, :cond_d

    if-eqz v21, :cond_c

    goto :goto_9

    :cond_c
    move-object/from16 v35, v0

    move-object v0, v6

    move-object/from16 v38, v7

    move-object/from16 v39, v8

    move-object/from16 v36, v9

    move-object/from16 v34, v10

    move-object/from16 v25, v20

    const/4 v8, 0x0

    const/4 v10, 0x1

    goto/16 :goto_21

    .line 280
    :cond_d
    :goto_9
    const/4 v1, 0x0

    .line 281
    .end local v20    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v1, "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    array-length v2, v8

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v2, :cond_10

    aget-object v5, v8, v4

    .line 282
    .local v5, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    move/from16 v20, v2

    const-class v2, Lcom/alibaba/fastjson/annotation/JSONCreator;

    invoke-virtual {v5, v2}, Ljava/lang/reflect/Constructor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/annotation/JSONCreator;

    .line 283
    .local v2, "annotation":Lcom/alibaba/fastjson/annotation/JSONCreator;
    if-eqz v2, :cond_f

    .line 284
    if-nez v1, :cond_e

    .line 288
    move-object v1, v5

    .line 289
    goto :goto_b

    .line 285
    :cond_e
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v4, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 281
    .end local v2    # "annotation":Lcom/alibaba/fastjson/annotation/JSONCreator;
    .end local v5    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_f
    add-int/lit8 v4, v4, 0x1

    move/from16 v2, v20

    goto :goto_a

    :cond_10
    move-object v5, v1

    .line 293
    .end local v1    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v5, "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_b
    const-string v4, "illegal json creator"

    if-eqz v5, :cond_19

    .line 294
    invoke-static {v12, v5, v13}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 296
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 297
    .local v3, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz p6, :cond_11

    .line 298
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    goto :goto_c

    :cond_11
    move-object v1, v3

    :goto_c
    move-object/from16 v20, v1

    .line 301
    .local v20, "getGenericParameterTypes":[Ljava/lang/reflect/Type;
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v23

    .line 302
    .local v23, "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_d
    array-length v1, v3

    if-ge v2, v1, :cond_16

    .line 303
    aget-object v1, v23, v2

    .line 304
    .local v1, "paramAnnotations":[Ljava/lang/annotation/Annotation;
    const/16 v24, 0x0

    .line 305
    .local v24, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    move-object/from16 v25, v4

    array-length v4, v1

    move-object/from16 v26, v5

    const/4 v5, 0x0

    .end local v5    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v26, "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_e
    if-ge v5, v4, :cond_13

    move/from16 v27, v4

    aget-object v4, v1, v5

    .line 306
    .local v4, "paramAnnotation":Ljava/lang/annotation/Annotation;
    move-object/from16 v28, v1

    .end local v1    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    .local v28, "paramAnnotations":[Ljava/lang/annotation/Annotation;
    instance-of v1, v4, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v1, :cond_12

    .line 307
    move-object/from16 v24, v4

    check-cast v24, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 308
    goto :goto_f

    .line 305
    .end local v4    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_12
    add-int/lit8 v5, v5, 0x1

    move/from16 v4, v27

    move-object/from16 v1, v28

    goto :goto_e

    .end local v28    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    .restart local v1    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    :cond_13
    move-object/from16 v28, v1

    .line 311
    .end local v1    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    .restart local v28    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    :goto_f
    if-eqz v24, :cond_15

    .line 315
    aget-object v27, v3, v2

    .line 316
    .local v27, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    aget-object v29, v20, v2

    .line 317
    .local v29, "fieldType":Ljava/lang/reflect/Type;
    invoke-interface/range {v24 .. v24}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1, v6, v10}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 319
    .local v5, "field":Ljava/lang/reflect/Field;
    if-eqz v5, :cond_14

    .line 320
    invoke-static {v12, v5, v13}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 323
    :cond_14
    invoke-interface/range {v24 .. v24}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v30

    .line 324
    .local v30, "ordinal":I
    invoke-interface/range {v24 .. v24}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v31

    .line 325
    .local v31, "serialzeFeatures":I
    new-instance v32, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-interface/range {v24 .. v24}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v1, v32

    move/from16 v33, v2

    .end local v2    # "i":I
    .local v33, "i":I
    move-object v2, v4

    move-object/from16 v34, v3

    .end local v3    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local v34, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object/from16 v3, p0

    move-object/from16 v35, v0

    move-object/from16 v0, v25

    .end local v0    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v35, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    move-object/from16 v4, v27

    move-object/from16 v25, v26

    move-object/from16 v26, v5

    .end local v5    # "field":Ljava/lang/reflect/Field;
    .local v25, "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v26, "field":Ljava/lang/reflect/Field;
    move-object/from16 v5, v29

    move-object/from16 v36, v9

    move-object v9, v6

    .end local v6    # "declaredFields":[Ljava/lang/reflect/Field;
    .local v9, "declaredFields":[Ljava/lang/reflect/Field;
    .local v36, "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    move-object/from16 v6, v26

    move-object/from16 v38, v7

    move-object/from16 v17, v9

    const/4 v9, 0x0

    .end local v7    # "methods":[Ljava/lang/reflect/Method;
    .end local v9    # "declaredFields":[Ljava/lang/reflect/Field;
    .local v17, "declaredFields":[Ljava/lang/reflect/Field;
    .local v38, "methods":[Ljava/lang/reflect/Method;
    move/from16 v7, v30

    move-object/from16 v39, v8

    .end local v8    # "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    .local v39, "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    move/from16 v8, v31

    invoke-direct/range {v1 .. v8}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;II)V

    .line 332
    .local v1, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-static {v11, v1, v14}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    .line 302
    .end local v1    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v24    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v26    # "field":Ljava/lang/reflect/Field;
    .end local v27    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v28    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    .end local v29    # "fieldType":Ljava/lang/reflect/Type;
    .end local v30    # "ordinal":I
    .end local v31    # "serialzeFeatures":I
    add-int/lit8 v2, v33, 0x1

    move-object v4, v0

    move-object/from16 v6, v17

    move-object/from16 v5, v25

    move-object/from16 v3, v34

    move-object/from16 v0, v35

    move-object/from16 v9, v36

    move-object/from16 v7, v38

    move-object/from16 v8, v39

    .end local v33    # "i":I
    .restart local v2    # "i":I
    goto/16 :goto_d

    .line 312
    .end local v17    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v25    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v34    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v35    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v36    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .end local v38    # "methods":[Ljava/lang/reflect/Method;
    .end local v39    # "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    .restart local v0    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v3    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v6    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v7    # "methods":[Ljava/lang/reflect/Method;
    .restart local v8    # "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    .local v9, "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .restart local v24    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v26, "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v28    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    :cond_15
    move-object/from16 v35, v0

    move-object/from16 v0, v25

    .end local v0    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v35    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 302
    .end local v24    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v26    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v28    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    .end local v35    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v0    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v5, "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_16
    move-object/from16 v35, v0

    move/from16 v33, v2

    move-object/from16 v34, v3

    move-object/from16 v25, v5

    move-object/from16 v17, v6

    move-object/from16 v38, v7

    move-object/from16 v39, v8

    move-object/from16 v36, v9

    const/4 v9, 0x0

    .line 335
    .end local v0    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v2    # "i":I
    .end local v3    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v5    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v6    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v7    # "methods":[Ljava/lang/reflect/Method;
    .end local v8    # "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    .end local v9    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .restart local v17    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v25    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v34    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v35    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v36    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .restart local v38    # "methods":[Ljava/lang/reflect/Method;
    .restart local v39    # "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 336
    .local v0, "fields":[Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-interface {v11, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 338
    array-length v1, v0

    new-array v1, v1, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 339
    .local v1, "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    array-length v2, v0

    invoke-static {v0, v9, v1, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 340
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 342
    if-eqz p4, :cond_17

    const-class v2, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-virtual {v12, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/annotation/JSONType;

    goto :goto_10

    :cond_17
    move-object/from16 v2, v22

    .line 344
    .end local v36    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .local v2, "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    :goto_10
    array-length v3, v0

    new-array v3, v3, [Ljava/lang/String;

    .line 345
    .end local v18    # "creatorConstructorParameters":[Ljava/lang/String;
    .local v3, "creatorConstructorParameters":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_11
    array-length v5, v0

    if-ge v4, v5, :cond_18

    .line 346
    aget-object v5, v0, v4

    iget-object v5, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 345
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 349
    .end local v0    # "fields":[Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v1    # "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v4    # "i":I
    .end local v20    # "getGenericParameterTypes":[Ljava/lang/reflect/Type;
    .end local v23    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v34    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_18
    move-object/from16 v36, v2

    move-object/from16 v18, v3

    move-object/from16 v34, v10

    move-object/from16 v0, v17

    const/4 v8, 0x0

    const/4 v10, 0x1

    goto/16 :goto_21

    .end local v2    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .end local v3    # "creatorConstructorParameters":[Ljava/lang/String;
    .end local v17    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v25    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v35    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v38    # "methods":[Ljava/lang/reflect/Method;
    .end local v39    # "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    .local v0, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v5    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v6    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v7    # "methods":[Ljava/lang/reflect/Method;
    .restart local v8    # "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    .restart local v9    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .restart local v18    # "creatorConstructorParameters":[Ljava/lang/String;
    :cond_19
    move-object/from16 v35, v0

    move-object v0, v4

    move-object/from16 v25, v5

    move-object/from16 v17, v6

    move-object/from16 v38, v7

    move-object/from16 v39, v8

    move-object/from16 v36, v9

    const/4 v9, 0x0

    .end local v0    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v5    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v6    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v7    # "methods":[Ljava/lang/reflect/Method;
    .end local v8    # "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    .end local v9    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .restart local v17    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v25    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v35    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v36    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .restart local v38    # "methods":[Ljava/lang/reflect/Method;
    .restart local v39    # "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    if-eqz v15, :cond_23

    .line 350
    invoke-static {v12, v15, v13}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 352
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    .line 354
    .local v8, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v1, v8

    if-lez v1, :cond_22

    .line 355
    if-eqz p6, :cond_1a

    .line 356
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    goto :goto_12

    :cond_1a
    move-object v1, v8

    :goto_12
    move-object/from16 v19, v1

    .line 359
    .local v19, "genericParameterTypes":[Ljava/lang/reflect/Type;
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v20

    .line 360
    .local v20, "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    const/4 v1, 0x0

    move v7, v1

    .local v7, "i":I
    :goto_13
    array-length v1, v8

    if-ge v7, v1, :cond_1e

    .line 361
    aget-object v6, v20, v7

    .line 362
    .local v6, "paramAnnotations":[Ljava/lang/annotation/Annotation;
    const/4 v1, 0x0

    .line 363
    .local v1, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    array-length v2, v6

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_1c

    aget-object v4, v6, v3

    .line 364
    .local v4, "paramAnnotation":Ljava/lang/annotation/Annotation;
    instance-of v5, v4, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v5, :cond_1b

    .line 365
    move-object v1, v4

    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 366
    move-object/from16 v23, v1

    goto :goto_15

    .line 363
    .end local v4    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_1c
    move-object/from16 v23, v1

    .line 369
    .end local v1    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v23, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :goto_15
    if-eqz v23, :cond_1d

    .line 373
    aget-object v24, v8, v7

    .line 374
    .local v24, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    aget-object v26, v19, v7

    .line 375
    .local v26, "fieldType":Ljava/lang/reflect/Type;
    invoke-interface/range {v23 .. v23}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v5, v17

    .end local v17    # "declaredFields":[Ljava/lang/reflect/Field;
    .local v5, "declaredFields":[Ljava/lang/reflect/Field;
    invoke-static {v12, v1, v5, v10}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v17

    .line 376
    .local v17, "field":Ljava/lang/reflect/Field;
    invoke-interface/range {v23 .. v23}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v27

    .line 377
    .local v27, "ordinal":I
    invoke-interface/range {v23 .. v23}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v28

    .line 378
    .local v28, "serialzeFeatures":I
    new-instance v29, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-interface/range {v23 .. v23}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v1, v29

    move-object/from16 v3, p0

    move-object/from16 v4, v24

    move-object/from16 v30, v5

    .end local v5    # "declaredFields":[Ljava/lang/reflect/Field;
    .local v30, "declaredFields":[Ljava/lang/reflect/Field;
    move-object/from16 v5, v26

    move-object/from16 v31, v6

    .end local v6    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    .local v31, "paramAnnotations":[Ljava/lang/annotation/Annotation;
    move-object/from16 v6, v17

    move/from16 v32, v7

    .end local v7    # "i":I
    .local v32, "i":I
    move/from16 v7, v27

    move-object/from16 v33, v8

    .end local v8    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local v33, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move/from16 v8, v28

    invoke-direct/range {v1 .. v8}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;II)V

    .line 385
    .local v1, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-static {v11, v1, v14}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    .line 360
    .end local v1    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v17    # "field":Ljava/lang/reflect/Field;
    .end local v23    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v24    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v26    # "fieldType":Ljava/lang/reflect/Type;
    .end local v27    # "ordinal":I
    .end local v28    # "serialzeFeatures":I
    .end local v31    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    add-int/lit8 v7, v32, 0x1

    move-object/from16 v17, v30

    move-object/from16 v8, v33

    .end local v32    # "i":I
    .restart local v7    # "i":I
    goto :goto_13

    .line 370
    .end local v30    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v33    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v6    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    .restart local v8    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local v17, "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v23    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_1d
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 360
    .end local v6    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    .end local v23    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_1e
    move/from16 v32, v7

    move-object/from16 v33, v8

    move-object/from16 v30, v17

    .line 388
    .end local v7    # "i":I
    .end local v8    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v17    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v30    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v33    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 389
    .local v0, "fields":[Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-interface {v11, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 391
    array-length v1, v0

    new-array v1, v1, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 392
    .local v1, "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    array-length v2, v0

    invoke-static {v0, v9, v1, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 393
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 395
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 396
    move-object v1, v0

    move-object/from16 v17, v1

    goto :goto_16

    .line 395
    :cond_1f
    move-object/from16 v17, v1

    .line 399
    .end local v1    # "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    .local v17, "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    :goto_16
    if-nez v36, :cond_21

    .line 400
    if-eqz p4, :cond_20

    const-class v1, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-virtual {v12, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    move-object/from16 v22, v1

    check-cast v22, Lcom/alibaba/fastjson/annotation/JSONType;

    :cond_20
    move-object/from16 v9, v22

    move-object/from16 v36, v9

    .line 402
    :cond_21
    new-instance v22, Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, v22

    move-object/from16 v2, p0

    move-object v5, v15

    move-object v6, v0

    move-object/from16 v7, v17

    move-object/from16 v8, v36

    move-object/from16 v23, v0

    move-object/from16 v0, v30

    .end local v30    # "declaredFields":[Ljava/lang/reflect/Field;
    .local v0, "declaredFields":[Ljava/lang/reflect/Field;
    .local v23, "fields":[Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v9, v18

    invoke-direct/range {v1 .. v9}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;[Lcom/alibaba/fastjson/util/FieldInfo;[Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/annotation/JSONType;[Ljava/lang/String;)V

    .line 404
    .local v1, "beanInfo":Lcom/alibaba/fastjson/parser/JavaBeanInfo;
    return-object v1

    .line 354
    .end local v0    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v1    # "beanInfo":Lcom/alibaba/fastjson/parser/JavaBeanInfo;
    .end local v19    # "genericParameterTypes":[Ljava/lang/reflect/Type;
    .end local v20    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v23    # "fields":[Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v33    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v8    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local v17, "declaredFields":[Ljava/lang/reflect/Field;
    :cond_22
    move-object/from16 v33, v8

    move-object/from16 v0, v17

    .line 406
    .end local v8    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v17    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v0    # "declaredFields":[Ljava/lang/reflect/Field;
    move-object/from16 v34, v10

    const/4 v8, 0x0

    const/4 v10, 0x1

    goto/16 :goto_21

    .end local v0    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v17    # "declaredFields":[Ljava/lang/reflect/Field;
    :cond_23
    move-object/from16 v0, v17

    .end local v17    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v0    # "declaredFields":[Ljava/lang/reflect/Field;
    if-nez v21, :cond_33

    .line 407
    const-string v1, "default constructor not found. "

    if-eqz v16, :cond_32

    move-object/from16 v8, v39

    .end local v39    # "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    .local v8, "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    array-length v2, v8

    if-lez v2, :cond_31

    .line 408
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getKoltinConstructorParameters(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v17

    .line 410
    .local v17, "parameters":[Ljava/lang/String;
    if-eqz v17, :cond_30

    .line 411
    array-length v1, v8

    move-object/from16 v7, v25

    const/4 v2, 0x0

    .end local v25    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v7, "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_17
    if-ge v2, v1, :cond_27

    aget-object v3, v8, v2

    .line 412
    .local v3, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 413
    .local v4, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v5, v4

    if-lez v5, :cond_24

    array-length v5, v4

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    aget-object v5, v4, v5

    .line 414
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v9, "kotlin.jvm.internal.DefaultConstructorMarker"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 415
    goto :goto_18

    .line 413
    :cond_24
    const/4 v6, 0x1

    .line 418
    :cond_25
    if-eqz v7, :cond_26

    .line 419
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    array-length v9, v4

    if-lt v5, v9, :cond_26

    .line 420
    goto :goto_18

    .line 423
    :cond_26
    move-object v7, v3

    .line 411
    .end local v3    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_18
    add-int/lit8 v2, v2, 0x1

    const/4 v9, 0x0

    goto :goto_17

    .line 426
    :cond_27
    const/4 v6, 0x1

    invoke-virtual {v7, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 427
    invoke-static {v12, v7, v13}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 429
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    .line 430
    .local v9, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz p6, :cond_28

    .line 431
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    goto :goto_19

    :cond_28
    move-object v1, v9

    :goto_19
    move-object/from16 v20, v1

    .line 434
    .local v20, "getGenericParameterTypes":[Ljava/lang/reflect/Type;
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v23

    .line 435
    .local v23, "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    const/4 v1, 0x0

    move v5, v1

    .local v5, "i":I
    :goto_1a
    array-length v1, v9

    if-ge v5, v1, :cond_2e

    .line 436
    aget-object v1, v17, v5

    .line 438
    .local v1, "paramName":Ljava/lang/String;
    aget-object v4, v23, v5

    .line 439
    .local v4, "paramAnnotations":[Ljava/lang/annotation/Annotation;
    const/4 v2, 0x0

    .line 440
    .local v2, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    array-length v3, v4

    const/4 v6, 0x0

    :goto_1b
    if-ge v6, v3, :cond_2a

    move-object/from16 v24, v2

    .end local v2    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v24, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    aget-object v2, v4, v6

    .line 441
    .local v2, "paramAnnotation":Ljava/lang/annotation/Annotation;
    move/from16 v25, v3

    instance-of v3, v2, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v3, :cond_29

    .line 442
    move-object v3, v2

    check-cast v3, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 443
    .end local v24    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v3, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    move-object v2, v3

    goto :goto_1c

    .line 440
    .end local v2    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    .end local v3    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v24    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_29
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, v24

    move/from16 v3, v25

    goto :goto_1b

    .end local v24    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v2, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_2a
    move-object/from16 v24, v2

    .line 447
    :goto_1c
    aget-object v24, v9, v5

    .line 448
    .local v24, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    aget-object v25, v20, v5

    .line 449
    .local v25, "fieldType":Ljava/lang/reflect/Type;
    invoke-static {v12, v1, v0, v10}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 451
    .local v6, "field":Ljava/lang/reflect/Field;
    if-eqz v6, :cond_2b

    if-nez v2, :cond_2b

    .line 452
    const-class v3, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v6, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object/from16 v26, v2

    goto :goto_1d

    .line 456
    :cond_2b
    move-object/from16 v26, v2

    .end local v2    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v26, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :goto_1d
    if-eqz v26, :cond_2d

    .line 457
    invoke-interface/range {v26 .. v26}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v2

    .line 458
    .local v2, "ordinal":I
    invoke-interface/range {v26 .. v26}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v3

    .line 460
    .local v3, "serialzeFeatures":I
    invoke-interface/range {v26 .. v26}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v27

    .line 461
    .local v27, "nameAnnotated":Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v28

    if-eqz v28, :cond_2c

    .line 462
    move-object/from16 v1, v27

    .line 464
    .end local v27    # "nameAnnotated":Ljava/lang/String;
    :cond_2c
    move-object/from16 v27, v1

    move/from16 v28, v2

    move/from16 v29, v3

    goto :goto_1e

    .line 465
    .end local v2    # "ordinal":I
    .end local v3    # "serialzeFeatures":I
    :cond_2d
    const/4 v2, 0x0

    .line 466
    .restart local v2    # "ordinal":I
    const/4 v3, 0x0

    move-object/from16 v27, v1

    move/from16 v28, v2

    move/from16 v29, v3

    .line 469
    .end local v1    # "paramName":Ljava/lang/String;
    .end local v2    # "ordinal":I
    .local v27, "paramName":Ljava/lang/String;
    .local v28, "ordinal":I
    .local v29, "serialzeFeatures":I
    :goto_1e
    new-instance v30, Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v1, v30

    move-object/from16 v2, v27

    move-object/from16 v3, p0

    move-object/from16 v31, v4

    .end local v4    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    .restart local v31    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    move-object/from16 v4, v24

    move/from16 v32, v5

    .end local v5    # "i":I
    .restart local v32    # "i":I
    move-object/from16 v5, v25

    move-object/from16 v33, v6

    move-object/from16 v34, v10

    const/4 v10, 0x1

    .end local v6    # "field":Ljava/lang/reflect/Field;
    .end local v10    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .local v33, "field":Ljava/lang/reflect/Field;
    .local v34, "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    move-object/from16 v37, v7

    .end local v7    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v37, "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    move/from16 v7, v28

    move-object/from16 v39, v8

    .end local v8    # "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    .restart local v39    # "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    move/from16 v8, v29

    invoke-direct/range {v1 .. v8}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;II)V

    .line 476
    .local v1, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-static {v11, v1, v14}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    .line 435
    .end local v1    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v24    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v25    # "fieldType":Ljava/lang/reflect/Type;
    .end local v26    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v27    # "paramName":Ljava/lang/String;
    .end local v28    # "ordinal":I
    .end local v29    # "serialzeFeatures":I
    .end local v31    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    .end local v33    # "field":Ljava/lang/reflect/Field;
    add-int/lit8 v5, v32, 0x1

    move-object/from16 v10, v34

    move-object/from16 v7, v37

    move-object/from16 v8, v39

    const/4 v6, 0x1

    .end local v32    # "i":I
    .restart local v5    # "i":I
    goto/16 :goto_1a

    .end local v34    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .end local v37    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v39    # "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    .restart local v7    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v8    # "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    .restart local v10    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    :cond_2e
    move/from16 v32, v5

    move-object/from16 v37, v7

    move-object/from16 v39, v8

    move-object/from16 v34, v10

    const/4 v10, 0x1

    .line 479
    .end local v5    # "i":I
    .end local v7    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v8    # "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    .end local v10    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .restart local v34    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .restart local v37    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v39    # "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 480
    .local v1, "fields":[Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-interface {v11, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 482
    array-length v2, v1

    new-array v2, v2, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 483
    .local v2, "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    array-length v3, v1

    const/4 v8, 0x0

    invoke-static {v1, v8, v2, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 484
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 486
    array-length v3, v1

    new-array v3, v3, [Ljava/lang/String;

    .line 487
    .end local v18    # "creatorConstructorParameters":[Ljava/lang/String;
    .local v3, "creatorConstructorParameters":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1f
    array-length v5, v1

    if-ge v4, v5, :cond_2f

    .line 488
    aget-object v5, v1, v4

    iget-object v5, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 487
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 495
    .end local v1    # "fields":[Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v2    # "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v4    # "i":I
    .end local v9    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v20    # "getGenericParameterTypes":[Ljava/lang/reflect/Type;
    .end local v23    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    :cond_2f
    nop

    .line 498
    .end local v17    # "parameters":[Ljava/lang/String;
    move-object/from16 v18, v3

    move-object/from16 v25, v37

    goto :goto_21

    .line 496
    .end local v3    # "creatorConstructorParameters":[Ljava/lang/String;
    .end local v34    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .end local v37    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v39    # "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    .restart local v8    # "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    .restart local v10    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .restart local v17    # "parameters":[Ljava/lang/String;
    .restart local v18    # "creatorConstructorParameters":[Ljava/lang/String;
    .local v25, "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_30
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 407
    .end local v17    # "parameters":[Ljava/lang/String;
    :cond_31
    move-object/from16 v39, v8

    move-object/from16 v34, v10

    .end local v8    # "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    .end local v10    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .restart local v34    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .restart local v39    # "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    goto :goto_20

    .end local v34    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .restart local v10    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    :cond_32
    move-object/from16 v34, v10

    .line 499
    .end local v10    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .restart local v34    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    :goto_20
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 406
    .end local v34    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .restart local v10    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    :cond_33
    move-object/from16 v34, v10

    const/4 v8, 0x0

    const/4 v10, 0x1

    .line 504
    .end local v10    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .restart local v34    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    :goto_21
    if-eqz v35, :cond_34

    .line 505
    move-object/from16 v9, v35

    .end local v35    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v9, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-static {v12, v9, v13}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    goto :goto_22

    .line 504
    .end local v9    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v35    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_34
    move-object/from16 v9, v35

    .line 508
    .end local v35    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v9    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_22
    const/4 v6, 0x4

    if-nez v14, :cond_4c

    .line 509
    move-object/from16 v5, v38

    .end local v38    # "methods":[Ljava/lang/reflect/Method;
    .local v5, "methods":[Ljava/lang/reflect/Method;
    array-length v4, v5

    const/4 v3, 0x0

    :goto_23
    if-ge v3, v4, :cond_4b

    aget-object v2, v5, v3

    .line 510
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    .local v1, "ordinal":I
    const/16 v17, 0x0

    .line 511
    .local v17, "serialzeFeatures":I
    move/from16 v19, v4

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    .line 512
    .local v4, "methodName":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v6, :cond_35

    .line 513
    move-object/from16 v30, v0

    move/from16 v31, v3

    move-object/from16 v41, v5

    move-object/from16 v23, v9

    move-object/from16 v28, v15

    move-object/from16 v33, v34

    const/16 v34, 0x1

    move-object v15, v11

    goto/16 :goto_2e

    .line 516
    :cond_35
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    .line 517
    .local v7, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v7, v6, :cond_37

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    if-ne v7, v6, :cond_36

    goto :goto_24

    :cond_36
    move-object/from16 v30, v0

    move/from16 v31, v3

    move-object/from16 v41, v5

    move-object/from16 v23, v9

    move-object/from16 v28, v15

    move-object/from16 v33, v34

    const/16 v34, 0x1

    move-object v15, v11

    goto/16 :goto_2e

    .line 518
    :cond_37
    :goto_24
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    if-eq v6, v10, :cond_38

    .line 520
    move-object/from16 v30, v0

    move/from16 v31, v3

    move-object/from16 v41, v5

    move-object/from16 v23, v9

    move-object/from16 v28, v15

    move-object/from16 v33, v34

    const/16 v34, 0x1

    move-object v15, v11

    goto/16 :goto_2e

    .line 524
    :cond_38
    if-eqz p5, :cond_39

    const-class v6, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson/annotation/JSONField;

    goto :goto_25

    :cond_39
    move-object/from16 v6, v22

    .line 526
    .local v6, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :goto_25
    if-nez v6, :cond_3a

    if-eqz p5, :cond_3a

    .line 527
    invoke-static {v12, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getSupperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v6

    move-object/from16 v24, v6

    goto :goto_26

    .line 530
    :cond_3a
    move-object/from16 v24, v6

    .end local v6    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .local v24, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :goto_26
    if-eqz v24, :cond_3d

    .line 531
    invoke-interface/range {v24 .. v24}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v6

    if-nez v6, :cond_3b

    .line 532
    move-object/from16 v30, v0

    move/from16 v31, v3

    move-object/from16 v41, v5

    move-object/from16 v23, v9

    move-object/from16 v28, v15

    move-object/from16 v33, v34

    const/16 v34, 0x1

    move-object v15, v11

    goto/16 :goto_2e

    .line 535
    :cond_3b
    invoke-interface/range {v24 .. v24}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v26

    .line 536
    .end local v1    # "ordinal":I
    .local v26, "ordinal":I
    invoke-interface/range {v24 .. v24}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v17

    .line 538
    invoke-interface/range {v24 .. v24}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3c

    .line 539
    invoke-interface/range {v24 .. v24}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v27

    .line 540
    .local v27, "propertyName":Ljava/lang/String;
    new-instance v6, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object v1, v6

    move-object/from16 v30, v2

    .end local v2    # "method":Ljava/lang/reflect/Method;
    .local v30, "method":Ljava/lang/reflect/Method;
    move-object/from16 v2, v27

    move/from16 v31, v3

    move-object/from16 v3, v30

    move-object/from16 v40, v4

    .end local v4    # "methodName":Ljava/lang/String;
    .local v40, "methodName":Ljava/lang/String;
    move-object/from16 v4, v28

    move-object/from16 v41, v5

    .end local v5    # "methods":[Ljava/lang/reflect/Method;
    .local v41, "methods":[Ljava/lang/reflect/Method;
    move-object/from16 v5, p0

    move-object/from16 v42, v6

    move-object/from16 v6, p2

    move-object/from16 v20, v7

    .end local v7    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v20, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move/from16 v7, v26

    const/16 v23, 0x0

    move/from16 v8, v17

    move-object/from16 v23, v9

    .end local v9    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v23, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    move-object/from16 v9, v24

    move-object/from16 v43, v34

    .end local v34    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .local v43, "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    move-object/from16 v10, v29

    move-object/from16 v28, v15

    move-object v15, v11

    .end local v11    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v15, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v28, "factoryMethod":Ljava/lang/reflect/Method;
    move/from16 v11, p6

    invoke-direct/range {v1 .. v11}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    move-object/from16 v1, v42

    invoke-static {v15, v1, v14}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    .line 552
    move-object/from16 v11, v30

    .end local v30    # "method":Ljava/lang/reflect/Method;
    .local v11, "method":Ljava/lang/reflect/Method;
    invoke-static {v12, v11, v13}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 553
    move-object/from16 v30, v0

    move-object/from16 v33, v43

    const/16 v34, 0x1

    goto/16 :goto_2e

    .line 538
    .end local v20    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v23    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v27    # "propertyName":Ljava/lang/String;
    .end local v28    # "factoryMethod":Ljava/lang/reflect/Method;
    .end local v40    # "methodName":Ljava/lang/String;
    .end local v41    # "methods":[Ljava/lang/reflect/Method;
    .end local v43    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    .restart local v4    # "methodName":Ljava/lang/String;
    .restart local v5    # "methods":[Ljava/lang/reflect/Method;
    .restart local v7    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v9    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v11, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v15, "factoryMethod":Ljava/lang/reflect/Method;
    .restart local v34    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    :cond_3c
    move/from16 v31, v3

    move-object/from16 v40, v4

    move-object/from16 v41, v5

    move-object/from16 v20, v7

    move-object/from16 v23, v9

    move-object/from16 v28, v15

    move-object/from16 v43, v34

    move-object v15, v11

    move-object v11, v2

    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "methodName":Ljava/lang/String;
    .end local v5    # "methods":[Ljava/lang/reflect/Method;
    .end local v7    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v34    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .local v11, "method":Ljava/lang/reflect/Method;
    .local v15, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v20    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v23    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v28    # "factoryMethod":Ljava/lang/reflect/Method;
    .restart local v40    # "methodName":Ljava/lang/String;
    .restart local v41    # "methods":[Ljava/lang/reflect/Method;
    .restart local v43    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    move/from16 v1, v26

    goto :goto_27

    .line 530
    .end local v20    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v23    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v26    # "ordinal":I
    .end local v28    # "factoryMethod":Ljava/lang/reflect/Method;
    .end local v40    # "methodName":Ljava/lang/String;
    .end local v41    # "methods":[Ljava/lang/reflect/Method;
    .end local v43    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .restart local v1    # "ordinal":I
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    .restart local v4    # "methodName":Ljava/lang/String;
    .restart local v5    # "methods":[Ljava/lang/reflect/Method;
    .restart local v7    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v9    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v11, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v15, "factoryMethod":Ljava/lang/reflect/Method;
    .restart local v34    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    :cond_3d
    move/from16 v31, v3

    move-object/from16 v40, v4

    move-object/from16 v41, v5

    move-object/from16 v20, v7

    move-object/from16 v23, v9

    move-object/from16 v28, v15

    move-object/from16 v43, v34

    move-object v15, v11

    move-object v11, v2

    .line 557
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "methodName":Ljava/lang/String;
    .end local v5    # "methods":[Ljava/lang/reflect/Method;
    .end local v7    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v34    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .local v11, "method":Ljava/lang/reflect/Method;
    .local v15, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v20    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v23    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v28    # "factoryMethod":Ljava/lang/reflect/Method;
    .restart local v40    # "methodName":Ljava/lang/String;
    .restart local v41    # "methods":[Ljava/lang/reflect/Method;
    .restart local v43    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    :goto_27
    const-string/jumbo v2, "set"

    move-object/from16 v10, v40

    .end local v40    # "methodName":Ljava/lang/String;
    .local v10, "methodName":Ljava/lang/String;
    invoke-virtual {v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 558
    move-object/from16 v30, v0

    move-object/from16 v33, v43

    const/16 v34, 0x1

    goto/16 :goto_2e

    .line 561
    :cond_3e
    const/4 v9, 0x3

    invoke-virtual {v10, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 564
    .local v8, "c3":C
    invoke-static {v8}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 565
    sget-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    if-eqz v2, :cond_3f

    .line 566
    invoke-virtual {v10, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x4

    .local v2, "propertyName":Ljava/lang/String;
    goto :goto_28

    .line 568
    .end local v2    # "propertyName":Ljava/lang/String;
    :cond_3f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v7, 0x4

    invoke-virtual {v10, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "propertyName":Ljava/lang/String;
    goto :goto_28

    .line 570
    .end local v2    # "propertyName":Ljava/lang/String;
    :cond_40
    const/4 v7, 0x4

    const/16 v2, 0x5f

    if-ne v8, v2, :cond_41

    .line 571
    invoke-virtual {v10, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "propertyName":Ljava/lang/String;
    goto :goto_28

    .line 572
    .end local v2    # "propertyName":Ljava/lang/String;
    :cond_41
    const/16 v2, 0x66

    if-ne v8, v2, :cond_42

    .line 573
    invoke-virtual {v10, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "propertyName":Ljava/lang/String;
    goto :goto_28

    .line 574
    .end local v2    # "propertyName":Ljava/lang/String;
    :cond_42
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_4a

    invoke-virtual {v10, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 575
    invoke-virtual {v10, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 580
    .restart local v2    # "propertyName":Ljava/lang/String;
    :goto_28
    move-object/from16 v6, v43

    .end local v43    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .local v6, "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    invoke-static {v12, v2, v0, v6}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 581
    .local v3, "field":Ljava/lang/reflect/Field;
    if-nez v3, :cond_43

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v4, v7, :cond_43

    .line 582
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "is"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 583
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 584
    .local v4, "isFieldName":Ljava/lang/String;
    invoke-static {v12, v4, v0, v6}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v3

    move-object v5, v3

    goto :goto_29

    .line 581
    .end local v4    # "isFieldName":Ljava/lang/String;
    :cond_43
    const/4 v7, 0x1

    .line 587
    move-object v5, v3

    .end local v3    # "field":Ljava/lang/reflect/Field;
    .local v5, "field":Ljava/lang/reflect/Field;
    :goto_29
    if-eqz v5, :cond_47

    .line 588
    if-eqz p5, :cond_44

    const-class v3, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/annotation/JSONField;

    goto :goto_2a

    :cond_44
    move-object/from16 v3, v22

    :goto_2a
    move-object/from16 v26, v3

    .line 590
    .local v26, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v26, :cond_46

    .line 591
    invoke-interface/range {v26 .. v26}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v27

    .line 592
    .end local v1    # "ordinal":I
    .local v27, "ordinal":I
    invoke-interface/range {v26 .. v26}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v17

    .line 594
    invoke-interface/range {v26 .. v26}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_45

    .line 595
    invoke-interface/range {v26 .. v26}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v29

    .line 596
    .end local v2    # "propertyName":Ljava/lang/String;
    .local v29, "propertyName":Ljava/lang/String;
    new-instance v4, Lcom/alibaba/fastjson/util/FieldInfo;

    move-object v1, v4

    move-object/from16 v2, v29

    move-object v3, v11

    move-object/from16 v30, v0

    move-object v0, v4

    .end local v0    # "declaredFields":[Ljava/lang/reflect/Field;
    .local v30, "declaredFields":[Ljava/lang/reflect/Field;
    move-object v4, v5

    move-object/from16 v32, v5

    .end local v5    # "field":Ljava/lang/reflect/Field;
    .local v32, "field":Ljava/lang/reflect/Field;
    move-object/from16 v5, p0

    move-object/from16 v33, v6

    .end local v6    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .local v33, "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    move-object/from16 v6, p2

    const/16 v34, 0x1

    move/from16 v7, v27

    move/from16 v35, v8

    .end local v8    # "c3":C
    .local v35, "c3":C
    move/from16 v8, v17

    move-object/from16 v9, v24

    move-object/from16 v37, v10

    .end local v10    # "methodName":Ljava/lang/String;
    .local v37, "methodName":Ljava/lang/String;
    move-object/from16 v10, v26

    move-object/from16 v38, v11

    .end local v11    # "method":Ljava/lang/reflect/Method;
    .local v38, "method":Ljava/lang/reflect/Method;
    move/from16 v11, p6

    invoke-direct/range {v1 .. v11}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    invoke-static {v15, v0, v14}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    .line 601
    goto/16 :goto_2e

    .line 604
    .end local v29    # "propertyName":Ljava/lang/String;
    .end local v30    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v32    # "field":Ljava/lang/reflect/Field;
    .end local v33    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .end local v35    # "c3":C
    .end local v37    # "methodName":Ljava/lang/String;
    .end local v38    # "method":Ljava/lang/reflect/Method;
    .restart local v0    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v2    # "propertyName":Ljava/lang/String;
    .restart local v5    # "field":Ljava/lang/reflect/Field;
    .restart local v6    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .restart local v8    # "c3":C
    .restart local v10    # "methodName":Ljava/lang/String;
    .restart local v11    # "method":Ljava/lang/reflect/Method;
    :cond_45
    move-object/from16 v30, v0

    move-object/from16 v32, v5

    move-object/from16 v33, v6

    move/from16 v35, v8

    move-object/from16 v37, v10

    move-object/from16 v38, v11

    const/16 v34, 0x1

    .end local v0    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .end local v8    # "c3":C
    .end local v10    # "methodName":Ljava/lang/String;
    .end local v11    # "method":Ljava/lang/reflect/Method;
    .restart local v30    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v32    # "field":Ljava/lang/reflect/Field;
    .restart local v33    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .restart local v35    # "c3":C
    .restart local v37    # "methodName":Ljava/lang/String;
    .restart local v38    # "method":Ljava/lang/reflect/Method;
    if-nez v24, :cond_48

    .line 605
    move-object/from16 v24, v26

    goto :goto_2c

    .line 590
    .end local v27    # "ordinal":I
    .end local v30    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v32    # "field":Ljava/lang/reflect/Field;
    .end local v33    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .end local v35    # "c3":C
    .end local v37    # "methodName":Ljava/lang/String;
    .end local v38    # "method":Ljava/lang/reflect/Method;
    .restart local v0    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v1    # "ordinal":I
    .restart local v5    # "field":Ljava/lang/reflect/Field;
    .restart local v6    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .restart local v8    # "c3":C
    .restart local v10    # "methodName":Ljava/lang/String;
    .restart local v11    # "method":Ljava/lang/reflect/Method;
    :cond_46
    move-object/from16 v30, v0

    move-object/from16 v32, v5

    move-object/from16 v33, v6

    move/from16 v35, v8

    move-object/from16 v37, v10

    move-object/from16 v38, v11

    const/16 v34, 0x1

    .end local v0    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .end local v8    # "c3":C
    .end local v10    # "methodName":Ljava/lang/String;
    .end local v11    # "method":Ljava/lang/reflect/Method;
    .restart local v30    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v32    # "field":Ljava/lang/reflect/Field;
    .restart local v33    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .restart local v35    # "c3":C
    .restart local v37    # "methodName":Ljava/lang/String;
    .restart local v38    # "method":Ljava/lang/reflect/Method;
    goto :goto_2b

    .line 587
    .end local v26    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v30    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v32    # "field":Ljava/lang/reflect/Field;
    .end local v33    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .end local v35    # "c3":C
    .end local v37    # "methodName":Ljava/lang/String;
    .end local v38    # "method":Ljava/lang/reflect/Method;
    .restart local v0    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v5    # "field":Ljava/lang/reflect/Field;
    .restart local v6    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .restart local v8    # "c3":C
    .restart local v10    # "methodName":Ljava/lang/String;
    .restart local v11    # "method":Ljava/lang/reflect/Method;
    :cond_47
    move-object/from16 v30, v0

    move-object/from16 v32, v5

    move-object/from16 v33, v6

    move/from16 v35, v8

    move-object/from16 v37, v10

    move-object/from16 v38, v11

    const/16 v34, 0x1

    .line 610
    .end local v0    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .end local v8    # "c3":C
    .end local v10    # "methodName":Ljava/lang/String;
    .end local v11    # "method":Ljava/lang/reflect/Method;
    .restart local v30    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v32    # "field":Ljava/lang/reflect/Field;
    .restart local v33    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .restart local v35    # "c3":C
    .restart local v37    # "methodName":Ljava/lang/String;
    .restart local v38    # "method":Ljava/lang/reflect/Method;
    :goto_2b
    move/from16 v27, v1

    .end local v1    # "ordinal":I
    .restart local v27    # "ordinal":I
    :cond_48
    :goto_2c
    move-object/from16 v11, p7

    if-eqz v11, :cond_49

    .line 611
    invoke-virtual {v11, v2}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_2d

    .line 610
    :cond_49
    move-object v0, v2

    .line 614
    .end local v2    # "propertyName":Ljava/lang/String;
    .local v0, "propertyName":Ljava/lang/String;
    :goto_2d
    new-instance v10, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v4, 0x0

    const/16 v26, 0x0

    move-object v1, v10

    move-object v2, v0

    move-object/from16 v3, v38

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move/from16 v7, v27

    move/from16 v8, v17

    move-object/from16 v9, v24

    move-object/from16 v44, v10

    move-object/from16 v10, v26

    move/from16 v11, p6

    invoke-direct/range {v1 .. v11}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    move-object/from16 v1, v44

    invoke-static {v15, v1, v14}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    .line 618
    move-object/from16 v2, v38

    .end local v38    # "method":Ljava/lang/reflect/Method;
    .local v2, "method":Ljava/lang/reflect/Method;
    invoke-static {v12, v2, v13}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    goto :goto_2e

    .line 574
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v27    # "ordinal":I
    .end local v30    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v32    # "field":Ljava/lang/reflect/Field;
    .end local v33    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .end local v35    # "c3":C
    .end local v37    # "methodName":Ljava/lang/String;
    .local v0, "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v1    # "ordinal":I
    .restart local v8    # "c3":C
    .restart local v10    # "methodName":Ljava/lang/String;
    .restart local v11    # "method":Ljava/lang/reflect/Method;
    .restart local v43    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    :cond_4a
    move-object/from16 v30, v0

    move/from16 v35, v8

    move-object/from16 v37, v10

    move-object v2, v11

    move-object/from16 v33, v43

    const/16 v34, 0x1

    .line 509
    .end local v0    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v1    # "ordinal":I
    .end local v8    # "c3":C
    .end local v10    # "methodName":Ljava/lang/String;
    .end local v11    # "method":Ljava/lang/reflect/Method;
    .end local v17    # "serialzeFeatures":I
    .end local v20    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v24    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v43    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .restart local v30    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v33    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    :goto_2e
    add-int/lit8 v3, v31, 0x1

    move-object v11, v15

    move/from16 v4, v19

    move-object/from16 v9, v23

    move-object/from16 v15, v28

    move-object/from16 v0, v30

    move-object/from16 v34, v33

    move-object/from16 v5, v41

    const/4 v6, 0x4

    const/4 v8, 0x0

    const/4 v10, 0x1

    goto/16 :goto_23

    .end local v23    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v28    # "factoryMethod":Ljava/lang/reflect/Method;
    .end local v30    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v33    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .end local v41    # "methods":[Ljava/lang/reflect/Method;
    .restart local v0    # "declaredFields":[Ljava/lang/reflect/Field;
    .local v5, "methods":[Ljava/lang/reflect/Method;
    .restart local v9    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v11, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v15, "factoryMethod":Ljava/lang/reflect/Method;
    .restart local v34    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    :cond_4b
    move-object/from16 v30, v0

    move-object/from16 v41, v5

    move-object/from16 v23, v9

    move-object/from16 v28, v15

    move-object/from16 v33, v34

    const/16 v34, 0x1

    move-object v15, v11

    .end local v0    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v5    # "methods":[Ljava/lang/reflect/Method;
    .end local v9    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v11    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v34    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .local v15, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v23    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v28    # "factoryMethod":Ljava/lang/reflect/Method;
    .restart local v30    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v33    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .restart local v41    # "methods":[Ljava/lang/reflect/Method;
    goto :goto_2f

    .line 508
    .end local v23    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v28    # "factoryMethod":Ljava/lang/reflect/Method;
    .end local v30    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v33    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .end local v41    # "methods":[Ljava/lang/reflect/Method;
    .restart local v0    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v9    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v11    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .local v15, "factoryMethod":Ljava/lang/reflect/Method;
    .restart local v34    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .local v38, "methods":[Ljava/lang/reflect/Method;
    :cond_4c
    move-object/from16 v30, v0

    move-object/from16 v23, v9

    move-object/from16 v28, v15

    move-object/from16 v33, v34

    move-object/from16 v41, v38

    const/16 v34, 0x1

    move-object v15, v11

    .line 624
    .end local v0    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v9    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v11    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v34    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .end local v38    # "methods":[Ljava/lang/reflect/Method;
    .local v15, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v23    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v28    # "factoryMethod":Ljava/lang/reflect/Method;
    .restart local v30    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v33    # "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    .restart local v41    # "methods":[Ljava/lang/reflect/Method;
    :goto_2f
    new-instance v0, Ljava/util/ArrayList;

    move-object/from16 v11, v30

    .end local v30    # "declaredFields":[Ljava/lang/reflect/Field;
    .local v11, "declaredFields":[Ljava/lang/reflect/Field;
    array-length v1, v11

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 625
    .local v0, "classfields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    array-length v1, v11

    const/4 v7, 0x0

    :goto_30
    if-ge v7, v1, :cond_52

    aget-object v2, v11, v7

    .line 626
    .local v2, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    .line 627
    .local v3, "modifiers":I
    and-int/lit8 v4, v3, 0x8

    if-eqz v4, :cond_4d

    .line 628
    goto :goto_33

    .line 631
    :cond_4d
    and-int/lit8 v4, v3, 0x10

    if-eqz v4, :cond_50

    .line 632
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    .line 633
    .local v4, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Ljava/util/Map;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_4f

    const-class v5, Ljava/util/Collection;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_4e

    goto :goto_31

    :cond_4e
    const/4 v5, 0x0

    goto :goto_32

    :cond_4f
    :goto_31
    const/4 v5, 0x1

    .line 634
    .local v5, "supportReadOnly":Z
    :goto_32
    if-nez v5, :cond_50

    .line 635
    goto :goto_33

    .line 639
    .end local v4    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "supportReadOnly":Z
    :cond_50
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_51

    .line 640
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 625
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v3    # "modifiers":I
    :cond_51
    :goto_33
    add-int/lit8 v7, v7, 0x1

    goto :goto_30

    .line 644
    :cond_52
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_34
    if-eqz v1, :cond_59

    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_59

    .line 645
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    const/4 v7, 0x0

    :goto_35
    if-ge v7, v3, :cond_58

    aget-object v4, v2, v7

    .line 646
    .local v4, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    .line 647
    .local v5, "modifiers":I
    and-int/lit8 v6, v5, 0x8

    if-eqz v6, :cond_53

    .line 648
    goto :goto_38

    .line 651
    :cond_53
    and-int/lit8 v6, v5, 0x10

    if-eqz v6, :cond_56

    .line 652
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    .line 653
    .local v6, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v8, Ljava/util/Map;

    invoke-virtual {v8, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_55

    const-class v8, Ljava/util/Collection;

    invoke-virtual {v8, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_54

    goto :goto_36

    :cond_54
    const/4 v8, 0x0

    goto :goto_37

    :cond_55
    :goto_36
    const/4 v8, 0x1

    .line 654
    .local v8, "supportReadOnly":Z
    :goto_37
    if-nez v8, :cond_56

    .line 655
    goto :goto_38

    .line 659
    .end local v6    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "supportReadOnly":Z
    :cond_56
    and-int/lit8 v6, v5, 0x1

    if-eqz v6, :cond_57

    .line 660
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    .end local v4    # "f":Ljava/lang/reflect/Field;
    .end local v5    # "modifiers":I
    :cond_57
    :goto_38
    add-int/lit8 v7, v7, 0x1

    goto :goto_35

    .line 644
    :cond_58
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_34

    .line 666
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_59
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_39
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljava/lang/reflect/Field;

    .line 667
    .local v10, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    .line 668
    .local v9, "fieldName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 669
    .local v1, "contains":Z
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v19, v1

    .end local v1    # "contains":Z
    .local v3, "size":I
    .local v19, "contains":Z
    :goto_3a
    if-ge v2, v3, :cond_5b

    .line 670
    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 671
    .local v1, "item":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v4, v1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 672
    const/4 v4, 0x1

    .line 673
    .end local v19    # "contains":Z
    .local v4, "contains":Z
    move/from16 v19, v4

    .line 669
    .end local v1    # "item":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v4    # "contains":Z
    .restart local v19    # "contains":Z
    :cond_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 677
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_5b
    if-eqz v19, :cond_5c

    .line 678
    goto :goto_39

    .line 681
    :cond_5c
    const/4 v1, 0x0

    .local v1, "ordinal":I
    const/4 v2, 0x0

    .line 682
    .local v2, "serialzeFeatures":I
    move-object v3, v9

    .line 684
    .local v3, "propertyName":Ljava/lang/String;
    if-eqz p5, :cond_5d

    const-class v4, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v10, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson/annotation/JSONField;

    goto :goto_3b

    :cond_5d
    move-object/from16 v4, v22

    :goto_3b
    move-object/from16 v20, v4

    .line 686
    .local v20, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v20, :cond_5f

    .line 687
    invoke-interface/range {v20 .. v20}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v1

    .line 688
    invoke-interface/range {v20 .. v20}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v2

    .line 690
    invoke-interface/range {v20 .. v20}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5e

    .line 691
    invoke-interface/range {v20 .. v20}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v3

    move/from16 v24, v1

    move/from16 v26, v2

    goto :goto_3c

    .line 690
    :cond_5e
    move/from16 v24, v1

    move/from16 v26, v2

    goto :goto_3c

    .line 686
    :cond_5f
    move/from16 v24, v1

    move/from16 v26, v2

    .line 695
    .end local v1    # "ordinal":I
    .end local v2    # "serialzeFeatures":I
    .local v24, "ordinal":I
    .local v26, "serialzeFeatures":I
    :goto_3c
    move-object/from16 v8, p7

    if-eqz v8, :cond_60

    .line 696
    invoke-virtual {v8, v3}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v27, v3

    goto :goto_3d

    .line 695
    :cond_60
    move-object/from16 v27, v3

    .line 699
    .end local v3    # "propertyName":Ljava/lang/String;
    .local v27, "propertyName":Ljava/lang/String;
    :goto_3d
    invoke-static {v12, v10, v13}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 700
    new-instance v7, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v3, 0x0

    const/16 v29, 0x0

    move-object v1, v7

    move-object/from16 v2, v27

    move-object v4, v10

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move-object/from16 v45, v7

    move/from16 v7, v24

    move/from16 v8, v26

    move-object/from16 v30, v9

    .end local v9    # "fieldName":Ljava/lang/String;
    .local v30, "fieldName":Ljava/lang/String;
    move-object/from16 v9, v29

    move-object/from16 v29, v10

    .end local v10    # "field":Ljava/lang/reflect/Field;
    .local v29, "field":Ljava/lang/reflect/Field;
    move-object/from16 v10, v20

    move-object/from16 v31, v11

    .end local v11    # "declaredFields":[Ljava/lang/reflect/Field;
    .local v31, "declaredFields":[Ljava/lang/reflect/Field;
    move/from16 v11, p6

    invoke-direct/range {v1 .. v11}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    move-object/from16 v1, v45

    invoke-static {v15, v1, v14}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    .line 712
    .end local v19    # "contains":Z
    .end local v20    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v24    # "ordinal":I
    .end local v26    # "serialzeFeatures":I
    .end local v27    # "propertyName":Ljava/lang/String;
    .end local v29    # "field":Ljava/lang/reflect/Field;
    .end local v30    # "fieldName":Ljava/lang/String;
    move-object/from16 v11, v31

    goto/16 :goto_39

    .line 714
    .end local v31    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v11    # "declaredFields":[Ljava/lang/reflect/Field;
    :cond_61
    move-object/from16 v31, v11

    .end local v11    # "declaredFields":[Ljava/lang/reflect/Field;
    .restart local v31    # "declaredFields":[Ljava/lang/reflect/Field;
    if-nez v14, :cond_6a

    .line 715
    move-object/from16 v11, v41

    .end local v41    # "methods":[Ljava/lang/reflect/Method;
    .local v11, "methods":[Ljava/lang/reflect/Method;
    array-length v10, v11

    const/4 v9, 0x0

    :goto_3e
    if-ge v9, v10, :cond_69

    aget-object v8, v11, v9

    .line 716
    .local v8, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    .line 717
    .local v7, "methodName":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v6, 0x4

    if-ge v1, v6, :cond_62

    .line 718
    move/from16 v20, v9

    move/from16 v24, v10

    move-object/from16 v26, v11

    const/16 v19, 0x3

    const/16 v29, 0x4

    goto/16 :goto_42

    .line 721
    :cond_62
    const-string v1, "get"

    invoke-virtual {v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_68

    const/4 v5, 0x3

    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 722
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_63

    .line 723
    move/from16 v20, v9

    move/from16 v24, v10

    move-object/from16 v26, v11

    const/16 v19, 0x3

    const/16 v29, 0x4

    goto/16 :goto_42

    .line 726
    :cond_63
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    .line 727
    .local v4, "methodReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_65

    const-class v1, Ljava/util/Map;

    .line 728
    invoke-virtual {v1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_64

    goto :goto_3f

    :cond_64
    move/from16 v20, v9

    move/from16 v24, v10

    move-object/from16 v26, v11

    const/16 v19, 0x3

    const/16 v29, 0x4

    goto/16 :goto_42

    .line 732
    :cond_65
    :goto_3f
    if-eqz p5, :cond_66

    const-class v1, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v8, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONField;

    goto :goto_40

    :cond_66
    move-object/from16 v1, v22

    :goto_40
    move-object/from16 v17, v1

    .line 735
    .local v17, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v17, :cond_67

    .line 736
    invoke-interface/range {v17 .. v17}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "annotationName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_67

    goto :goto_41

    .end local v2    # "annotationName":Ljava/lang/String;
    :cond_67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 738
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    :goto_41
    nop

    .line 740
    .local v2, "propertyName":Ljava/lang/String;
    new-instance v3, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    move-object v1, v3

    move-object/from16 v46, v3

    move-object v3, v8

    move-object/from16 v27, v4

    .end local v4    # "methodReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v27, "methodReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v4, v19

    const/16 v19, 0x3

    move-object/from16 v5, p0

    const/16 v29, 0x4

    move-object/from16 v6, p2

    move-object/from16 v30, v7

    .end local v7    # "methodName":Ljava/lang/String;
    .local v30, "methodName":Ljava/lang/String;
    move/from16 v7, v20

    move-object/from16 v47, v8

    .end local v8    # "method":Ljava/lang/reflect/Method;
    .local v47, "method":Ljava/lang/reflect/Method;
    move/from16 v8, v24

    move/from16 v20, v9

    move-object/from16 v9, v17

    move/from16 v24, v10

    move-object/from16 v10, v26

    move-object/from16 v26, v11

    .end local v11    # "methods":[Ljava/lang/reflect/Method;
    .local v26, "methods":[Ljava/lang/reflect/Method;
    move/from16 v11, p6

    invoke-direct/range {v1 .. v11}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    move-object/from16 v1, v46

    invoke-static {v15, v1, v14}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    .line 744
    move-object/from16 v1, v47

    .end local v47    # "method":Ljava/lang/reflect/Method;
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-static {v12, v1, v13}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    goto :goto_42

    .line 721
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "propertyName":Ljava/lang/String;
    .end local v17    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v26    # "methods":[Ljava/lang/reflect/Method;
    .end local v27    # "methodReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v30    # "methodName":Ljava/lang/String;
    .restart local v7    # "methodName":Ljava/lang/String;
    .restart local v8    # "method":Ljava/lang/reflect/Method;
    .restart local v11    # "methods":[Ljava/lang/reflect/Method;
    :cond_68
    move-object/from16 v30, v7

    move-object v1, v8

    move/from16 v20, v9

    move/from16 v24, v10

    move-object/from16 v26, v11

    const/16 v19, 0x3

    const/16 v29, 0x4

    .line 715
    .end local v7    # "methodName":Ljava/lang/String;
    .end local v8    # "method":Ljava/lang/reflect/Method;
    .end local v11    # "methods":[Ljava/lang/reflect/Method;
    .restart local v26    # "methods":[Ljava/lang/reflect/Method;
    :goto_42
    add-int/lit8 v9, v20, 0x1

    move/from16 v10, v24

    move-object/from16 v11, v26

    goto/16 :goto_3e

    .end local v26    # "methods":[Ljava/lang/reflect/Method;
    .restart local v11    # "methods":[Ljava/lang/reflect/Method;
    :cond_69
    move-object/from16 v26, v11

    .end local v11    # "methods":[Ljava/lang/reflect/Method;
    .restart local v26    # "methods":[Ljava/lang/reflect/Method;
    goto :goto_43

    .line 714
    .end local v26    # "methods":[Ljava/lang/reflect/Method;
    .restart local v41    # "methods":[Ljava/lang/reflect/Method;
    :cond_6a
    move-object/from16 v26, v41

    .line 750
    .end local v41    # "methods":[Ljava/lang/reflect/Method;
    .restart local v26    # "methods":[Ljava/lang/reflect/Method;
    :goto_43
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    new-array v10, v1, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 751
    .local v10, "fields":[Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-interface {v15, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 753
    array-length v1, v10

    new-array v11, v1, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 754
    .local v11, "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    array-length v1, v10

    const/4 v2, 0x0

    invoke-static {v10, v2, v11, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 755
    invoke-static {v11}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 757
    if-eqz p4, :cond_6b

    const-class v1, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-virtual {v12, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONType;

    move-object v8, v1

    goto :goto_44

    :cond_6b
    move-object/from16 v8, v22

    .line 758
    .end local v36    # "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    .local v8, "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    :goto_44
    new-instance v17, Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-object/from16 v3, v23

    move-object/from16 v4, v25

    move-object/from16 v5, v28

    move-object v6, v10

    move-object v7, v11

    move-object/from16 v9, v18

    invoke-direct/range {v1 .. v9}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;[Lcom/alibaba/fastjson/util/FieldInfo;[Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/annotation/JSONType;[Ljava/lang/String;)V

    return-object v17
.end method

.method private computeSortedFields([Lcom/alibaba/fastjson/util/FieldInfo;[Lcom/alibaba/fastjson/util/FieldInfo;)[Lcom/alibaba/fastjson/util/FieldInfo;
    .locals 10
    .param p1, "fields"    # [Lcom/alibaba/fastjson/util/FieldInfo;
    .param p2, "sortedFields"    # [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 99
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    if-nez v0, :cond_0

    .line 100
    return-object p2

    .line 103
    :cond_0
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->orders()[Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "orders":[Ljava/lang/String;
    if-eqz v0, :cond_14

    array-length v1, v0

    if-eqz v1, :cond_14

    .line 105
    const/4 v1, 0x1

    .line 106
    .local v1, "containsAll":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_4

    .line 107
    const/4 v3, 0x0

    .line 108
    .local v3, "got":Z
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v5, p2

    if-ge v4, v5, :cond_2

    .line 109
    aget-object v5, p2, v4

    iget-object v5, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 110
    const/4 v3, 0x1

    .line 111
    goto :goto_2

    .line 108
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 114
    .end local v4    # "j":I
    :cond_2
    :goto_2
    if-nez v3, :cond_3

    .line 115
    const/4 v1, 0x0

    .line 116
    goto :goto_3

    .line 106
    .end local v3    # "got":Z
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    .end local v2    # "i":I
    :cond_4
    :goto_3
    if-nez v1, :cond_5

    .line 121
    return-object p2

    .line 124
    :cond_5
    array-length v2, v0

    array-length v3, p1

    const/4 v4, 0x1

    if-ne v2, v3, :cond_c

    .line 125
    const/4 v2, 0x1

    .line 126
    .local v2, "orderMatch":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    array-length v5, v0

    if-ge v3, v5, :cond_7

    .line 127
    aget-object v5, p2, v3

    iget-object v5, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    aget-object v6, v0, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 128
    const/4 v2, 0x0

    .line 129
    goto :goto_5

    .line 126
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 133
    .end local v3    # "i":I
    :cond_7
    :goto_5
    if-eqz v2, :cond_8

    .line 134
    return-object p2

    .line 137
    :cond_8
    array-length v3, p2

    new-array v3, v3, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 138
    .local v3, "newSortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_6
    array-length v6, v0

    if-ge v5, v6, :cond_b

    .line 139
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_7
    array-length v7, p2

    if-ge v6, v7, :cond_a

    .line 140
    aget-object v7, p2, v6

    iget-object v7, v7, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    aget-object v8, v0, v5

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 141
    aget-object v7, p2, v6

    aput-object v7, v3, v5

    .line 142
    goto :goto_8

    .line 139
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 138
    .end local v6    # "j":I
    :cond_a
    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 146
    .end local v5    # "i":I
    :cond_b
    move-object p2, v3

    .line 147
    iput-boolean v4, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->ordered:Z

    .line 148
    return-object v3

    .line 151
    .end local v2    # "orderMatch":Z
    .end local v3    # "newSortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_c
    array-length v2, p2

    new-array v2, v2, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 152
    .local v2, "newSortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    array-length v5, v0

    if-ge v3, v5, :cond_f

    .line 153
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_a
    array-length v6, p2

    if-ge v5, v6, :cond_e

    .line 154
    aget-object v6, p2, v5

    iget-object v6, v6, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    aget-object v7, v0, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 155
    aget-object v6, p2, v5

    aput-object v6, v2, v3

    .line 156
    goto :goto_b

    .line 153
    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 152
    .end local v5    # "j":I
    :cond_e
    :goto_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 161
    .end local v3    # "i":I
    :cond_f
    array-length v3, v0

    .line 162
    .local v3, "fieldIndex":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_c
    array-length v6, p2

    if-ge v5, v6, :cond_13

    .line 163
    const/4 v6, 0x0

    .line 164
    .local v6, "contains":Z
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_d
    array-length v8, v2

    if-ge v7, v8, :cond_11

    if-ge v7, v3, :cond_11

    .line 165
    aget-object v8, v2, v5

    aget-object v9, p2, v7

    invoke-virtual {v8, v9}, Lcom/alibaba/fastjson/util/FieldInfo;->equals(Lcom/alibaba/fastjson/util/FieldInfo;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 166
    const/4 v6, 0x1

    .line 167
    goto :goto_e

    .line 164
    :cond_10
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    .line 170
    .end local v7    # "j":I
    :cond_11
    :goto_e
    if-nez v6, :cond_12

    .line 171
    aget-object v7, p2, v5

    aput-object v7, v2, v3

    .line 172
    add-int/lit8 v3, v3, 0x1

    .line 162
    .end local v6    # "contains":Z
    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 175
    .end local v5    # "i":I
    :cond_13
    iput-boolean v4, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->ordered:Z

    .line 178
    .end local v1    # "containsAll":Z
    .end local v2    # "newSortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v3    # "fieldIndex":I
    :cond_14
    return-object p2
.end method

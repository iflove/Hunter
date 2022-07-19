.class public Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;
.super Ljava/lang/Object;
.source "JavaBeanDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# instance fields
.field private final alterNameFieldDeserializers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;",
            ">;"
        }
    .end annotation
.end field

.field public final beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

.field protected final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

.field private transient smartMatchHashArray:[J

.field private transient smartMatchHashArrayMapping:[I

.field private final sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .locals 8
    .param p1, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p3, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .line 37
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    iget-object v7, p1, Lcom/alibaba/fastjson/parser/ParserConfig;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p2

    move-object v2, p3

    invoke-static/range {v0 .. v7}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->build(Ljava/lang/Class;ILjava/lang/reflect/Type;ZZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/JavaBeanInfo;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/JavaBeanInfo;)V
    .locals 10
    .param p1, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p3, "type"    # Ljava/lang/reflect/Type;
    .param p4, "beanInfo"    # Lcom/alibaba/fastjson/parser/JavaBeanInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/JavaBeanInfo;",
            ")V"
        }
    .end annotation

    .line 40
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p2, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    .line 42
    iput-object p4, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    .line 44
    const/4 v0, 0x0

    .line 45
    .local v0, "alterNameFieldDeserializers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;>;"
    iget-object v1, p4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v1, v1

    new-array v1, v1, [Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 46
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v2, v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 47
    iget-object v3, p4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v3, v3, v1

    .line 48
    .local v3, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-virtual {p1, p1, p2, v3}, Lcom/alibaba/fastjson/parser/ParserConfig;->createFieldDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v4

    .line 50
    .local v4, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aput-object v4, v5, v1

    .line 52
    iget-object v5, v3, Lcom/alibaba/fastjson/util/FieldInfo;->alternateNames:[Ljava/lang/String;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    .line 53
    .local v8, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 54
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    move-object v0, v9

    .line 56
    :cond_0
    invoke-interface {v0, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .end local v8    # "name":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 46
    .end local v3    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v4    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_2
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->alterNameFieldDeserializers:Ljava/util/Map;

    .line 61
    iget-object v1, p4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v1, v1

    new-array v1, v1, [Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 62
    const/4 v1, 0x0

    .restart local v1    # "i":I
    iget-object v2, p4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v2, v2

    .restart local v2    # "size":I
    :goto_2
    if-ge v1, v2, :cond_3

    .line 63
    iget-object v3, p4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v3, v3, v1

    .line 64
    .restart local v3    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v4, v3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v4

    .line 65
    .restart local v4    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aput-object v4, v5, v1

    .line 62
    .end local v3    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v4    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 67
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_3
    return-void
.end method

.method private deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 43
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 343
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v1, p4

    const-class v0, Lcom/alibaba/fastjson/JSON;

    if-eq v9, v0, :cond_8c

    const-class v0, Lcom/alibaba/fastjson/JSONObject;

    if-ne v9, v0, :cond_0

    goto/16 :goto_31

    .line 347
    :cond_0
    iget-object v11, v8, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 349
    .local v11, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    iget v2, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 350
    .local v2, "token":I
    const/16 v0, 0x8

    const/4 v12, 0x0

    const/16 v13, 0x10

    if-ne v2, v0, :cond_1

    .line 351
    invoke-virtual {v11, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 352
    return-object v12

    .line 355
    :cond_1
    iget-boolean v14, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->disableCircularReferenceDetect:Z

    .line 357
    .local v14, "disableCircularReferenceDetect":Z
    iget-object v0, v8, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 358
    .local v0, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 359
    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    move-object v15, v0

    goto :goto_0

    .line 361
    :cond_2
    move-object v15, v0

    .end local v0    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .local v15, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    :goto_0
    const/4 v3, 0x0

    .line 364
    .local v3, "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    const/4 v0, 0x0

    .line 366
    .local v0, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/16 v6, 0xd

    if-ne v2, v6, :cond_5

    .line 367
    :try_start_0
    invoke-virtual {v11, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 368
    if-nez v1, :cond_3

    .line 369
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v4

    .line 371
    .end local p4    # "object":Ljava/lang/Object;
    .local v1, "object":Ljava/lang/Object;
    :cond_3
    nop

    .line 852
    if-eqz v3, :cond_4

    .line 853
    iput-object v1, v3, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 855
    :cond_4
    invoke-virtual {v8, v15}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 371
    return-object v1

    .line 852
    .end local v0    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "object":Ljava/lang/Object;
    .restart local p4    # "object":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    move-object v6, v1

    move/from16 v34, v14

    goto/16 :goto_30

    .line 374
    .restart local v0    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_5
    const/16 v4, 0xe

    const/4 v5, 0x0

    if-ne v2, v4, :cond_9

    .line 375
    :try_start_1
    iget-object v4, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-boolean v4, v4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->supportBeanToArray:Z

    if-nez v4, :cond_7

    iget v4, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v6, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    iget v6, v6, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v4, v6

    if-eqz v4, :cond_6

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v4, 0x1

    .line 377
    .local v4, "isSupportArrayToBean":Z
    :goto_2
    if-eqz v4, :cond_9

    .line 378
    invoke-direct/range {p0 .. p4}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->deserialzeArrayMapping(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 852
    if-eqz v3, :cond_8

    .line 853
    iput-object v1, v3, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 855
    :cond_8
    invoke-virtual {v8, v15}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 378
    return-object v5

    .line 382
    .end local v4    # "isSupportArrayToBean":Z
    :cond_9
    const/16 v4, 0xc

    const/4 v6, 0x4

    if-eq v2, v4, :cond_f

    if-eq v2, v13, :cond_f

    .line 383
    :try_start_2
    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->isBlankInput()Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_b

    .line 384
    nop

    .line 852
    if-eqz v3, :cond_a

    .line 853
    iput-object v1, v3, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 855
    :cond_a
    invoke-virtual {v8, v15}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 384
    return-object v12

    .line 387
    :cond_b
    if-ne v2, v6, :cond_d

    .line 388
    :try_start_3
    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v4

    .line 389
    .local v4, "strVal":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_d

    .line 390
    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 391
    nop

    .line 852
    if-eqz v3, :cond_c

    .line 853
    iput-object v1, v3, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 855
    :cond_c
    invoke-virtual {v8, v15}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 391
    return-object v12

    .line 395
    .end local v4    # "strVal":Ljava/lang/String;
    :cond_d
    :try_start_4
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v5, "syntax error, expect {, actual "

    .line 396
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 397
    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 399
    .local v4, "buf":Ljava/lang/StringBuffer;
    instance-of v5, v10, Ljava/lang/String;

    if-eqz v5, :cond_e

    .line 400
    const-string v5, ", fieldName "

    .line 401
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 402
    invoke-virtual {v4, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 405
    :cond_e
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local v2    # "token":I
    .end local v3    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v11    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v14    # "disableCircularReferenceDetect":Z
    .end local v15    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local p1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .end local p2    # "type":Ljava/lang/reflect/Type;
    .end local p3    # "fieldName":Ljava/lang/Object;
    .end local p4    # "object":Ljava/lang/Object;
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 408
    .end local v4    # "buf":Ljava/lang/StringBuffer;
    .restart local v2    # "token":I
    .restart local v3    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v11    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v14    # "disableCircularReferenceDetect":Z
    .restart local v15    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local p1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .restart local p2    # "type":Ljava/lang/reflect/Type;
    .restart local p3    # "fieldName":Ljava/lang/Object;
    .restart local p4    # "object":Ljava/lang/Object;
    :cond_f
    :try_start_5
    iget v4, v8, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_e

    const/4 v12, 0x2

    if-ne v4, v12, :cond_10

    .line 409
    :try_start_6
    iput v5, v8, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 412
    :cond_10
    :try_start_7
    iget-object v4, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->typeKey:Ljava/lang/String;

    move-object v12, v4

    .line 413
    .local v12, "typeKey":Ljava/lang/String;
    const-wide/16 v4, 0x0

    .line 415
    .local v4, "matchFieldHash":J
    const/16 v19, 0x0

    .local v19, "fieldIndex":I
    iget-object v6, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v6, v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_e

    move/from16 v13, v19

    .line 416
    .end local v19    # "fieldIndex":I
    .end local p4    # "object":Ljava/lang/Object;
    .restart local v1    # "object":Ljava/lang/Object;
    .local v6, "size":I
    .local v13, "fieldIndex":I
    :goto_3
    const/16 v21, 0x0

    .line 417
    .local v21, "key":Ljava/lang/String;
    const/16 v22, 0x0

    .line 418
    .local v22, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    const/16 v23, 0x0

    .line 419
    .local v23, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    const/16 v24, 0x0

    .line 421
    .local v24, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-wide/16 v25, 0x0

    cmp-long v27, v4, v25

    if-eqz v27, :cond_12

    .line 422
    :try_start_8
    invoke-virtual {v7, v4, v5}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getFieldDeserializerByHash(J)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v25
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object/from16 p4, v25

    .line 423
    .end local v22    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .local p4, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    move/from16 v25, v2

    move-object/from16 v2, p4

    .end local p4    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .local v2, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .local v25, "token":I
    if-eqz v2, :cond_11

    .line 424
    move-wide/from16 v26, v4

    .end local v4    # "matchFieldHash":J
    .local v26, "matchFieldHash":J
    :try_start_9
    iget-object v4, v2, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 425
    .end local v23    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .local v4, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v5, v4, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    move-object/from16 v24, v5

    move-object/from16 v23, v4

    goto :goto_4

    .line 423
    .end local v26    # "matchFieldHash":J
    .local v4, "matchFieldHash":J
    .restart local v23    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_11
    move-wide/from16 v26, v4

    .line 427
    .end local v4    # "matchFieldHash":J
    .restart local v26    # "matchFieldHash":J
    :goto_4
    const-wide/16 v4, 0x0

    move-object/from16 v22, v2

    move-wide/from16 v26, v4

    .end local v26    # "matchFieldHash":J
    .restart local v4    # "matchFieldHash":J
    goto :goto_5

    .line 852
    .end local v0    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "matchFieldHash":J
    .end local v6    # "size":I
    .end local v12    # "typeKey":Ljava/lang/String;
    .end local v13    # "fieldIndex":I
    .end local v21    # "key":Ljava/lang/String;
    .end local v23    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v24    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v25    # "token":I
    .local v2, "token":I
    :catchall_1
    move-exception v0

    move/from16 v25, v2

    move-object v6, v1

    move/from16 v34, v14

    .end local v2    # "token":I
    .restart local v25    # "token":I
    goto/16 :goto_30

    .line 421
    .end local v25    # "token":I
    .restart local v0    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v2    # "token":I
    .restart local v4    # "matchFieldHash":J
    .restart local v6    # "size":I
    .restart local v12    # "typeKey":Ljava/lang/String;
    .restart local v13    # "fieldIndex":I
    .restart local v21    # "key":Ljava/lang/String;
    .restart local v22    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v23    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v24    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_12
    move/from16 v25, v2

    move-wide/from16 v26, v4

    .line 430
    .end local v2    # "token":I
    .end local v4    # "matchFieldHash":J
    .restart local v25    # "token":I
    .restart local v26    # "matchFieldHash":J
    :goto_5
    if-nez v22, :cond_14

    .line 431
    if-ge v13, v6, :cond_13

    .line 432
    iget-object v2, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v2, v2, v13

    .line 433
    .end local v22    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .local v2, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    iget-object v4, v2, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 434
    .end local v23    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .local v4, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v5, v4, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object/from16 v24, v5

    .line 435
    add-int/lit8 v13, v13, 0x1

    move-object v5, v2

    move-object/from16 v2, v24

    goto :goto_6

    .line 852
    .end local v0    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v4    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v6    # "size":I
    .end local v12    # "typeKey":Ljava/lang/String;
    .end local v13    # "fieldIndex":I
    .end local v21    # "key":Ljava/lang/String;
    .end local v24    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v26    # "matchFieldHash":J
    :catchall_2
    move-exception v0

    move-object v6, v1

    move/from16 v34, v14

    move/from16 v2, v25

    goto/16 :goto_30

    .line 437
    .restart local v0    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v6    # "size":I
    .restart local v12    # "typeKey":Ljava/lang/String;
    .restart local v13    # "fieldIndex":I
    .restart local v21    # "key":Ljava/lang/String;
    .restart local v22    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v23    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v24    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v26    # "matchFieldHash":J
    :cond_13
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v5, v22

    move-object/from16 v4, v23

    move-object/from16 v2, v24

    goto :goto_6

    .line 430
    :cond_14
    move-object/from16 v5, v22

    move-object/from16 v4, v23

    move-object/from16 v2, v24

    .line 441
    .end local v22    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v23    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v24    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v2, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .local v5, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :goto_6
    const/16 v22, 0x0

    .line 442
    .local v22, "matchField":Z
    const/16 v23, 0x0

    .line 444
    .local v23, "valueParsed":Z
    const/16 v24, 0x0

    .line 445
    .local v24, "fieldValue":Ljava/lang/Object;
    const/16 v28, 0x0

    .line 446
    .local v28, "fieldValueInt":I
    const-wide/16 v29, 0x0

    .line 447
    .local v29, "fieldValueLong":J
    const/16 v31, 0x0

    .line 448
    .local v31, "fieldValueFloat":F
    const-wide/16 v32, 0x0

    .line 449
    .local v32, "fieldValueDouble":D
    if-eqz v5, :cond_42

    .line 450
    move/from16 p4, v13

    move/from16 v34, v14

    .end local v13    # "fieldIndex":I
    .end local v14    # "disableCircularReferenceDetect":Z
    .local v34, "disableCircularReferenceDetect":Z
    .local p4, "fieldIndex":I
    :try_start_a
    iget-wide v13, v4, Lcom/alibaba/fastjson/util/FieldInfo;->nameHashCode:J

    .line 451
    .local v13, "fieldHashCode":J
    move/from16 v35, v6

    .end local v6    # "size":I
    .local v35, "size":I
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v36, v0

    .end local v0    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v36, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, -0x2

    if-eq v2, v6, :cond_3f

    const-class v6, Ljava/lang/Integer;

    if-ne v2, v6, :cond_15

    move-object v6, v1

    goto/16 :goto_c

    .line 462
    :cond_15
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v2, v6, :cond_3c

    const-class v6, Ljava/lang/Long;

    if-ne v2, v6, :cond_16

    move-object v6, v1

    goto/16 :goto_b

    .line 473
    :cond_16
    const-class v6, Ljava/lang/String;

    if-ne v2, v6, :cond_19

    .line 474
    invoke-virtual {v11, v13, v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldString(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v24, v6

    .line 476
    iget v6, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v6, :cond_17

    .line 477
    const/16 v22, 0x1

    .line 478
    const/16 v23, 0x1

    move-object v6, v1

    move/from16 v1, v31

    move-wide/from16 v13, v32

    move-wide/from16 v41, v29

    move/from16 v30, v28

    move-wide/from16 v28, v41

    goto/16 :goto_d

    .line 479
    :cond_17
    iget v6, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-ne v6, v0, :cond_18

    .line 480
    move-object v6, v1

    .end local v1    # "object":Ljava/lang/Object;
    .local v6, "object":Ljava/lang/Object;
    :try_start_b
    iget-wide v0, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    .line 481
    .end local v26    # "matchFieldHash":J
    .local v0, "matchFieldHash":J
    move/from16 v13, p4

    move-wide v4, v0

    move-object v1, v6

    move/from16 v2, v25

    move/from16 v14, v34

    move/from16 v6, v35

    move-object/from16 v0, v36

    goto/16 :goto_3

    .line 479
    .end local v0    # "matchFieldHash":J
    .end local v6    # "object":Ljava/lang/Object;
    .restart local v1    # "object":Ljava/lang/Object;
    .restart local v26    # "matchFieldHash":J
    :cond_18
    move-object v6, v1

    .end local v1    # "object":Ljava/lang/Object;
    .restart local v6    # "object":Ljava/lang/Object;
    move/from16 v1, v31

    move-wide/from16 v13, v32

    move-wide/from16 v41, v29

    move/from16 v30, v28

    move-wide/from16 v28, v41

    goto/16 :goto_d

    .line 483
    .end local v6    # "object":Ljava/lang/Object;
    .restart local v1    # "object":Ljava/lang/Object;
    :cond_19
    move-object v6, v1

    .end local v1    # "object":Ljava/lang/Object;
    .restart local v6    # "object":Ljava/lang/Object;
    const-class v1, Ljava/util/Date;

    if-ne v2, v1, :cond_1c

    .line 484
    invoke-virtual {v11, v13, v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldDate(J)Ljava/util/Date;

    move-result-object v1

    move-object/from16 v24, v1

    .line 486
    iget v1, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v1, :cond_1a

    .line 487
    const/16 v22, 0x1

    .line 488
    const/16 v23, 0x1

    move/from16 v1, v31

    move-wide/from16 v13, v32

    move-wide/from16 v41, v29

    move/from16 v30, v28

    move-wide/from16 v28, v41

    goto/16 :goto_d

    .line 489
    :cond_1a
    iget v1, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-ne v1, v0, :cond_1b

    .line 490
    iget-wide v0, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    .line 491
    .end local v26    # "matchFieldHash":J
    .restart local v0    # "matchFieldHash":J
    move/from16 v13, p4

    move-wide v4, v0

    move-object v1, v6

    move/from16 v2, v25

    move/from16 v14, v34

    move/from16 v6, v35

    move-object/from16 v0, v36

    goto/16 :goto_3

    .line 489
    .end local v0    # "matchFieldHash":J
    .restart local v26    # "matchFieldHash":J
    :cond_1b
    move/from16 v1, v31

    move-wide/from16 v13, v32

    move-wide/from16 v41, v29

    move/from16 v30, v28

    move-wide/from16 v28, v41

    goto/16 :goto_d

    .line 493
    :cond_1c
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v2, v1, :cond_39

    const-class v1, Ljava/lang/Boolean;

    if-ne v2, v1, :cond_1d

    goto/16 :goto_a

    .line 504
    :cond_1d
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v2, v1, :cond_36

    const-class v1, Ljava/lang/Float;

    if-ne v2, v1, :cond_1e

    goto/16 :goto_9

    .line 514
    :cond_1e
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v2, v1, :cond_33

    const-class v1, Ljava/lang/Double;

    if-ne v2, v1, :cond_1f

    goto/16 :goto_8

    .line 524
    :cond_1f
    iget-boolean v1, v4, Lcom/alibaba/fastjson/util/FieldInfo;->isEnum:Z

    if-eqz v1, :cond_22

    iget-object v1, v8, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 525
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v1

    instance-of v1, v1, Lcom/alibaba/fastjson/parser/EnumDeserializer;

    if-eqz v1, :cond_22

    .line 527
    invoke-virtual {v11, v13, v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldSymbol(J)J

    move-result-wide v37

    move-wide/from16 v39, v37

    .line 529
    .local v39, "enumNameHashCode":J
    iget v1, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v1, :cond_20

    .line 530
    const/16 v22, 0x1

    .line 531
    const/16 v23, 0x1

    .line 533
    move-wide/from16 v0, v39

    .end local v39    # "enumNameHashCode":J
    .local v0, "enumNameHashCode":J
    invoke-virtual {v5, v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->getEnumByHashCode(J)Ljava/lang/Enum;

    move-result-object v37

    move-object/from16 v24, v37

    goto :goto_7

    .line 534
    .end local v0    # "enumNameHashCode":J
    .restart local v39    # "enumNameHashCode":J
    :cond_20
    move-wide/from16 v37, v39

    .end local v39    # "enumNameHashCode":J
    .local v37, "enumNameHashCode":J
    iget v1, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-ne v1, v0, :cond_21

    .line 535
    iget-wide v0, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    .line 536
    .end local v26    # "matchFieldHash":J
    .local v0, "matchFieldHash":J
    move/from16 v13, p4

    move-wide v4, v0

    move-object v1, v6

    move/from16 v2, v25

    move/from16 v14, v34

    move/from16 v6, v35

    move-object/from16 v0, v36

    goto/16 :goto_3

    .line 538
    .end local v0    # "matchFieldHash":J
    .end local v37    # "enumNameHashCode":J
    .restart local v26    # "matchFieldHash":J
    :cond_21
    :goto_7
    move/from16 v1, v31

    move-wide/from16 v13, v32

    move-wide/from16 v41, v29

    move/from16 v30, v28

    move-wide/from16 v28, v41

    goto/16 :goto_d

    :cond_22
    const-class v1, [I

    if-ne v2, v1, :cond_25

    .line 539
    invoke-virtual {v11, v13, v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldIntArray(J)[I

    move-result-object v1

    move-object/from16 v24, v1

    .line 541
    iget v1, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v1, :cond_23

    .line 542
    const/16 v22, 0x1

    .line 543
    const/16 v23, 0x1

    move/from16 v1, v31

    move-wide/from16 v13, v32

    move-wide/from16 v41, v29

    move/from16 v30, v28

    move-wide/from16 v28, v41

    goto/16 :goto_d

    .line 544
    :cond_23
    iget v1, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-ne v1, v0, :cond_24

    .line 545
    iget-wide v0, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    .line 546
    .end local v26    # "matchFieldHash":J
    .restart local v0    # "matchFieldHash":J
    move/from16 v13, p4

    move-wide v4, v0

    move-object v1, v6

    move/from16 v2, v25

    move/from16 v14, v34

    move/from16 v6, v35

    move-object/from16 v0, v36

    goto/16 :goto_3

    .line 544
    .end local v0    # "matchFieldHash":J
    .restart local v26    # "matchFieldHash":J
    :cond_24
    move/from16 v1, v31

    move-wide/from16 v13, v32

    move-wide/from16 v41, v29

    move/from16 v30, v28

    move-wide/from16 v28, v41

    goto/16 :goto_d

    .line 548
    :cond_25
    const-class v1, [F

    if-ne v2, v1, :cond_28

    .line 549
    invoke-virtual {v11, v13, v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldFloatArray(J)[F

    move-result-object v1

    move-object/from16 v24, v1

    .line 551
    iget v1, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v1, :cond_26

    .line 552
    const/16 v22, 0x1

    .line 553
    const/16 v23, 0x1

    move/from16 v1, v31

    move-wide/from16 v13, v32

    move-wide/from16 v41, v29

    move/from16 v30, v28

    move-wide/from16 v28, v41

    goto/16 :goto_d

    .line 554
    :cond_26
    iget v1, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-ne v1, v0, :cond_27

    .line 555
    iget-wide v0, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    .line 556
    .end local v26    # "matchFieldHash":J
    .restart local v0    # "matchFieldHash":J
    move/from16 v13, p4

    move-wide v4, v0

    move-object v1, v6

    move/from16 v2, v25

    move/from16 v14, v34

    move/from16 v6, v35

    move-object/from16 v0, v36

    goto/16 :goto_3

    .line 554
    .end local v0    # "matchFieldHash":J
    .restart local v26    # "matchFieldHash":J
    :cond_27
    move/from16 v1, v31

    move-wide/from16 v13, v32

    move-wide/from16 v41, v29

    move/from16 v30, v28

    move-wide/from16 v28, v41

    goto/16 :goto_d

    .line 558
    :cond_28
    const-class v1, [D

    if-ne v2, v1, :cond_2b

    .line 559
    invoke-virtual {v11, v13, v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldDoubleArray(J)[D

    move-result-object v1

    move-object/from16 v24, v1

    .line 561
    iget v1, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v1, :cond_29

    .line 562
    const/16 v22, 0x1

    .line 563
    const/16 v23, 0x1

    move/from16 v1, v31

    move-wide/from16 v13, v32

    move-wide/from16 v41, v29

    move/from16 v30, v28

    move-wide/from16 v28, v41

    goto/16 :goto_d

    .line 564
    :cond_29
    iget v1, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-ne v1, v0, :cond_2a

    .line 565
    iget-wide v0, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    .line 566
    .end local v26    # "matchFieldHash":J
    .restart local v0    # "matchFieldHash":J
    move/from16 v13, p4

    move-wide v4, v0

    move-object v1, v6

    move/from16 v2, v25

    move/from16 v14, v34

    move/from16 v6, v35

    move-object/from16 v0, v36

    goto/16 :goto_3

    .line 564
    .end local v0    # "matchFieldHash":J
    .restart local v26    # "matchFieldHash":J
    :cond_2a
    move/from16 v1, v31

    move-wide/from16 v13, v32

    move-wide/from16 v41, v29

    move/from16 v30, v28

    move-wide/from16 v28, v41

    goto/16 :goto_d

    .line 568
    :cond_2b
    const-class v1, [[F

    if-ne v2, v1, :cond_2e

    .line 569
    invoke-virtual {v11, v13, v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldFloatArray2(J)[[F

    move-result-object v1

    move-object/from16 v24, v1

    .line 571
    iget v1, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v1, :cond_2c

    .line 572
    const/16 v22, 0x1

    .line 573
    const/16 v23, 0x1

    move/from16 v1, v31

    move-wide/from16 v13, v32

    move-wide/from16 v41, v29

    move/from16 v30, v28

    move-wide/from16 v28, v41

    goto/16 :goto_d

    .line 574
    :cond_2c
    iget v1, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-ne v1, v0, :cond_2d

    .line 575
    iget-wide v0, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    .line 576
    .end local v26    # "matchFieldHash":J
    .restart local v0    # "matchFieldHash":J
    move/from16 v13, p4

    move-wide v4, v0

    move-object v1, v6

    move/from16 v2, v25

    move/from16 v14, v34

    move/from16 v6, v35

    move-object/from16 v0, v36

    goto/16 :goto_3

    .line 574
    .end local v0    # "matchFieldHash":J
    .restart local v26    # "matchFieldHash":J
    :cond_2d
    move/from16 v1, v31

    move-wide/from16 v13, v32

    move-wide/from16 v41, v29

    move/from16 v30, v28

    move-wide/from16 v28, v41

    goto/16 :goto_d

    .line 578
    :cond_2e
    const-class v1, [[D

    if-ne v2, v1, :cond_31

    .line 579
    invoke-virtual {v11, v13, v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldDoubleArray2(J)[[D

    move-result-object v1

    move-object/from16 v24, v1

    .line 581
    iget v1, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v1, :cond_2f

    .line 582
    const/16 v22, 0x1

    .line 583
    const/16 v23, 0x1

    move/from16 v1, v31

    move-wide/from16 v13, v32

    move-wide/from16 v41, v29

    move/from16 v30, v28

    move-wide/from16 v28, v41

    goto/16 :goto_d

    .line 584
    :cond_2f
    iget v1, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-ne v1, v0, :cond_30

    .line 585
    iget-wide v0, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    .line 586
    .end local v26    # "matchFieldHash":J
    .restart local v0    # "matchFieldHash":J
    move/from16 v13, p4

    move-wide v4, v0

    move-object v1, v6

    move/from16 v2, v25

    move/from16 v14, v34

    move/from16 v6, v35

    move-object/from16 v0, v36

    goto/16 :goto_3

    .line 584
    .end local v0    # "matchFieldHash":J
    .restart local v26    # "matchFieldHash":J
    :cond_30
    move/from16 v1, v31

    move-wide/from16 v13, v32

    move-wide/from16 v41, v29

    move/from16 v30, v28

    move-wide/from16 v28, v41

    goto/16 :goto_d

    .line 588
    :cond_31
    iget-wide v0, v4, Lcom/alibaba/fastjson/util/FieldInfo;->nameHashCode:J

    invoke-virtual {v11, v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchField(J)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 589
    const/16 v22, 0x1

    move/from16 v1, v31

    move-wide/from16 v13, v32

    move-wide/from16 v41, v29

    move/from16 v30, v28

    move-wide/from16 v28, v41

    goto/16 :goto_d

    .line 588
    :cond_32
    move/from16 v13, p4

    move-object v1, v6

    move/from16 v2, v25

    move-wide/from16 v4, v26

    move/from16 v14, v34

    move/from16 v6, v35

    move-object/from16 v0, v36

    goto/16 :goto_3

    .line 515
    :cond_33
    :goto_8
    invoke-virtual {v11, v13, v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldDouble(J)D

    move-result-wide v37

    move-wide/from16 v32, v37

    .line 517
    iget v1, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v1, :cond_34

    .line 518
    const/16 v22, 0x1

    .line 519
    const/16 v23, 0x1

    move/from16 v1, v31

    move-wide/from16 v13, v32

    move-wide/from16 v41, v29

    move/from16 v30, v28

    move-wide/from16 v28, v41

    goto/16 :goto_d

    .line 520
    :cond_34
    iget v1, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-ne v1, v0, :cond_35

    .line 521
    iget-wide v0, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    .line 522
    .end local v26    # "matchFieldHash":J
    .restart local v0    # "matchFieldHash":J
    move/from16 v13, p4

    move-wide v4, v0

    move-object v1, v6

    move/from16 v2, v25

    move/from16 v14, v34

    move/from16 v6, v35

    move-object/from16 v0, v36

    goto/16 :goto_3

    .line 520
    .end local v0    # "matchFieldHash":J
    .restart local v26    # "matchFieldHash":J
    :cond_35
    move/from16 v1, v31

    move-wide/from16 v13, v32

    move-wide/from16 v41, v29

    move/from16 v30, v28

    move-wide/from16 v28, v41

    goto/16 :goto_d

    .line 505
    :cond_36
    :goto_9
    invoke-virtual {v11, v13, v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldFloat(J)F

    move-result v1

    move/from16 v31, v1

    .line 507
    iget v1, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v1, :cond_37

    .line 508
    const/16 v22, 0x1

    .line 509
    const/16 v23, 0x1

    move/from16 v1, v31

    move-wide/from16 v13, v32

    move-wide/from16 v41, v29

    move/from16 v30, v28

    move-wide/from16 v28, v41

    goto/16 :goto_d

    .line 510
    :cond_37
    iget v1, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-ne v1, v0, :cond_38

    .line 511
    iget-wide v0, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    .line 512
    .end local v26    # "matchFieldHash":J
    .restart local v0    # "matchFieldHash":J
    move/from16 v13, p4

    move-wide v4, v0

    move-object v1, v6

    move/from16 v2, v25

    move/from16 v14, v34

    move/from16 v6, v35

    move-object/from16 v0, v36

    goto/16 :goto_3

    .line 510
    .end local v0    # "matchFieldHash":J
    .restart local v26    # "matchFieldHash":J
    :cond_38
    move/from16 v1, v31

    move-wide/from16 v13, v32

    move-wide/from16 v41, v29

    move/from16 v30, v28

    move-wide/from16 v28, v41

    goto/16 :goto_d

    .line 495
    :cond_39
    :goto_a
    invoke-virtual {v11, v13, v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldBoolean(J)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v24, v1

    .line 497
    iget v1, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v1, :cond_3a

    .line 498
    const/16 v22, 0x1

    .line 499
    const/16 v23, 0x1

    move/from16 v1, v31

    move-wide/from16 v13, v32

    move-wide/from16 v41, v29

    move/from16 v30, v28

    move-wide/from16 v28, v41

    goto/16 :goto_d

    .line 500
    :cond_3a
    iget v1, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-ne v1, v0, :cond_3b

    .line 501
    iget-wide v0, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    .line 502
    .end local v26    # "matchFieldHash":J
    .restart local v0    # "matchFieldHash":J
    move/from16 v13, p4

    move-wide v4, v0

    move-object v1, v6

    move/from16 v2, v25

    move/from16 v14, v34

    move/from16 v6, v35

    move-object/from16 v0, v36

    goto/16 :goto_3

    .line 500
    .end local v0    # "matchFieldHash":J
    .restart local v26    # "matchFieldHash":J
    :cond_3b
    move/from16 v1, v31

    move-wide/from16 v13, v32

    move-wide/from16 v41, v29

    move/from16 v30, v28

    move-wide/from16 v28, v41

    goto/16 :goto_d

    .line 462
    .end local v6    # "object":Ljava/lang/Object;
    .restart local v1    # "object":Ljava/lang/Object;
    :cond_3c
    move-object v6, v1

    .line 464
    .end local v1    # "object":Ljava/lang/Object;
    .restart local v6    # "object":Ljava/lang/Object;
    :goto_b
    invoke-virtual {v11, v13, v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldLong(J)J

    move-result-wide v37

    move-wide/from16 v29, v37

    .line 466
    iget v1, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v1, :cond_3d

    .line 467
    const/16 v22, 0x1

    .line 468
    const/16 v23, 0x1

    move/from16 v1, v31

    move-wide/from16 v13, v32

    move-wide/from16 v41, v29

    move/from16 v30, v28

    move-wide/from16 v28, v41

    goto/16 :goto_d

    .line 469
    :cond_3d
    iget v1, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-ne v1, v0, :cond_3e

    .line 470
    iget-wide v0, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    .line 471
    .end local v26    # "matchFieldHash":J
    .restart local v0    # "matchFieldHash":J
    move/from16 v13, p4

    move-wide v4, v0

    move-object v1, v6

    move/from16 v2, v25

    move/from16 v14, v34

    move/from16 v6, v35

    move-object/from16 v0, v36

    goto/16 :goto_3

    .line 469
    .end local v0    # "matchFieldHash":J
    .restart local v26    # "matchFieldHash":J
    :cond_3e
    move/from16 v1, v31

    move-wide/from16 v13, v32

    move-wide/from16 v41, v29

    move/from16 v30, v28

    move-wide/from16 v28, v41

    goto/16 :goto_d

    .line 451
    .end local v6    # "object":Ljava/lang/Object;
    .restart local v1    # "object":Ljava/lang/Object;
    :cond_3f
    move-object v6, v1

    .line 453
    .end local v1    # "object":Ljava/lang/Object;
    .restart local v6    # "object":Ljava/lang/Object;
    :goto_c
    invoke-virtual {v11, v13, v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldInt(J)I

    move-result v1

    move/from16 v28, v1

    .line 455
    iget v1, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v1, :cond_40

    .line 456
    const/16 v22, 0x1

    .line 457
    const/16 v23, 0x1

    move/from16 v1, v31

    move-wide/from16 v13, v32

    move-wide/from16 v41, v29

    move/from16 v30, v28

    move-wide/from16 v28, v41

    goto :goto_d

    .line 458
    :cond_40
    iget v1, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-ne v1, v0, :cond_41

    .line 459
    iget-wide v0, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    .line 460
    .end local v26    # "matchFieldHash":J
    .restart local v0    # "matchFieldHash":J
    move/from16 v13, p4

    move-wide v4, v0

    move-object v1, v6

    move/from16 v2, v25

    move/from16 v14, v34

    move/from16 v6, v35

    move-object/from16 v0, v36

    goto/16 :goto_3

    .line 458
    .end local v0    # "matchFieldHash":J
    .restart local v26    # "matchFieldHash":J
    :cond_41
    move/from16 v1, v31

    move-wide/from16 v13, v32

    move-wide/from16 v41, v29

    move/from16 v30, v28

    move-wide/from16 v28, v41

    goto :goto_d

    .line 852
    .end local v2    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v5    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v6    # "object":Ljava/lang/Object;
    .end local v12    # "typeKey":Ljava/lang/String;
    .end local v13    # "fieldHashCode":J
    .end local v21    # "key":Ljava/lang/String;
    .end local v22    # "matchField":Z
    .end local v23    # "valueParsed":Z
    .end local v24    # "fieldValue":Ljava/lang/Object;
    .end local v26    # "matchFieldHash":J
    .end local v28    # "fieldValueInt":I
    .end local v29    # "fieldValueLong":J
    .end local v31    # "fieldValueFloat":F
    .end local v32    # "fieldValueDouble":D
    .end local v35    # "size":I
    .end local v36    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local p4    # "fieldIndex":I
    .restart local v1    # "object":Ljava/lang/Object;
    :catchall_3
    move-exception v0

    move-object v6, v1

    move/from16 v2, v25

    .end local v1    # "object":Ljava/lang/Object;
    .restart local v6    # "object":Ljava/lang/Object;
    goto/16 :goto_30

    .line 449
    .end local v34    # "disableCircularReferenceDetect":Z
    .local v0, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v1    # "object":Ljava/lang/Object;
    .restart local v2    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v5    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .local v6, "size":I
    .restart local v12    # "typeKey":Ljava/lang/String;
    .local v13, "fieldIndex":I
    .restart local v14    # "disableCircularReferenceDetect":Z
    .restart local v21    # "key":Ljava/lang/String;
    .restart local v22    # "matchField":Z
    .restart local v23    # "valueParsed":Z
    .restart local v24    # "fieldValue":Ljava/lang/Object;
    .restart local v26    # "matchFieldHash":J
    .restart local v28    # "fieldValueInt":I
    .restart local v29    # "fieldValueLong":J
    .restart local v31    # "fieldValueFloat":F
    .restart local v32    # "fieldValueDouble":D
    :cond_42
    move-object/from16 v36, v0

    move/from16 v35, v6

    move/from16 p4, v13

    move/from16 v34, v14

    move-object v6, v1

    .end local v0    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "object":Ljava/lang/Object;
    .end local v13    # "fieldIndex":I
    .end local v14    # "disableCircularReferenceDetect":Z
    .local v6, "object":Ljava/lang/Object;
    .restart local v34    # "disableCircularReferenceDetect":Z
    .restart local v35    # "size":I
    .restart local v36    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local p4    # "fieldIndex":I
    move/from16 v1, v31

    move-wide/from16 v13, v32

    move-wide/from16 v41, v29

    move/from16 v30, v28

    move-wide/from16 v28, v41

    .line 595
    .end local v29    # "fieldValueLong":J
    .end local v31    # "fieldValueFloat":F
    .end local v32    # "fieldValueDouble":D
    .local v1, "fieldValueFloat":F
    .local v13, "fieldValueDouble":D
    .local v28, "fieldValueLong":J
    .local v30, "fieldValueInt":I
    :goto_d
    if-nez v22, :cond_5c

    .line 596
    iget-object v0, v8, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-virtual {v11, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v0

    .line 598
    .end local v21    # "key":Ljava/lang/String;
    .local v0, "key":Ljava/lang/String;
    if-nez v0, :cond_44

    .line 599
    move-object/from16 v31, v4

    .end local v4    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .local v31, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget v4, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 600
    .end local v25    # "token":I
    .local v4, "token":I
    move/from16 v32, v1

    const/16 v1, 0xd

    .end local v1    # "fieldValueFloat":F
    .local v32, "fieldValueFloat":F
    if-ne v4, v1, :cond_43

    .line 601
    const/16 v1, 0x10

    :try_start_c
    invoke-virtual {v11, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 602
    move v2, v4

    move-object/from16 v32, v5

    move-object/from16 v24, v12

    move-object/from16 v1, v36

    goto/16 :goto_28

    .line 852
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v12    # "typeKey":Ljava/lang/String;
    .end local v13    # "fieldValueDouble":D
    .end local v22    # "matchField":Z
    .end local v23    # "valueParsed":Z
    .end local v24    # "fieldValue":Ljava/lang/Object;
    .end local v26    # "matchFieldHash":J
    .end local v28    # "fieldValueLong":J
    .end local v30    # "fieldValueInt":I
    .end local v31    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v32    # "fieldValueFloat":F
    .end local v35    # "size":I
    .end local v36    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local p4    # "fieldIndex":I
    :catchall_4
    move-exception v0

    move v2, v4

    goto/16 :goto_30

    .line 604
    .restart local v0    # "key":Ljava/lang/String;
    .restart local v2    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v12    # "typeKey":Ljava/lang/String;
    .restart local v13    # "fieldValueDouble":D
    .restart local v22    # "matchField":Z
    .restart local v23    # "valueParsed":Z
    .restart local v24    # "fieldValue":Ljava/lang/Object;
    .restart local v26    # "matchFieldHash":J
    .restart local v28    # "fieldValueLong":J
    .restart local v30    # "fieldValueInt":I
    .restart local v31    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v32    # "fieldValueFloat":F
    .restart local v35    # "size":I
    .restart local v36    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local p4    # "fieldIndex":I
    :cond_43
    const/16 v1, 0x10

    if-ne v4, v1, :cond_45

    .line 605
    move/from16 v13, p4

    move v2, v4

    move-object v1, v6

    move-wide/from16 v4, v26

    move/from16 v14, v34

    move/from16 v6, v35

    move-object/from16 v0, v36

    goto/16 :goto_3

    .line 598
    .end local v31    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v32    # "fieldValueFloat":F
    .restart local v1    # "fieldValueFloat":F
    .local v4, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v25    # "token":I
    :cond_44
    move/from16 v32, v1

    move-object/from16 v31, v4

    .end local v1    # "fieldValueFloat":F
    .end local v4    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v31    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v32    # "fieldValueFloat":F
    move/from16 v4, v25

    .line 609
    .end local v25    # "token":I
    .local v4, "token":I
    :cond_45
    :try_start_d
    const-string v1, "$ref"
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    move/from16 v21, v4

    .end local v4    # "token":I
    .local v21, "token":I
    const/16 v4, 0x3a

    if-ne v1, v0, :cond_4f

    if-eqz v15, :cond_4f

    .line 610
    :try_start_e
    invoke-virtual {v11, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    .line 611
    iget v1, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    .line 612
    .end local v21    # "token":I
    .local v1, "token":I
    const/4 v4, 0x4

    if-ne v1, v4, :cond_4e

    .line 613
    :try_start_f
    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v4

    .line 614
    .local v4, "ref":Ljava/lang/String;
    move-wide/from16 v37, v13

    .end local v13    # "fieldValueDouble":D
    .local v37, "fieldValueDouble":D
    const-string v13, "@"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_46

    .line 615
    iget-object v13, v15, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object v6, v13

    goto :goto_11

    .line 616
    :cond_46
    const-string v13, ".."

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_48

    .line 617
    iget-object v13, v15, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 618
    .local v13, "parentContext":Lcom/alibaba/fastjson/parser/ParseContext;
    iget-object v14, v13, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-eqz v14, :cond_47

    .line 619
    iget-object v14, v13, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object v6, v14

    goto :goto_e

    .line 621
    :cond_47
    new-instance v14, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v14, v13, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    invoke-virtual {v8, v14}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    .line 622
    const/4 v14, 0x1

    iput v14, v8, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    .line 624
    .end local v13    # "parentContext":Lcom/alibaba/fastjson/parser/ParseContext;
    :goto_e
    goto :goto_11

    :cond_48
    const-string v13, "$"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4b

    .line 625
    move-object v13, v15

    .line 626
    .local v13, "rootContext":Lcom/alibaba/fastjson/parser/ParseContext;
    :goto_f
    iget-object v14, v13, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    if-eqz v14, :cond_49

    .line 627
    iget-object v14, v13, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    move-object v13, v14

    goto :goto_f

    .line 630
    :cond_49
    iget-object v14, v13, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-eqz v14, :cond_4a

    .line 631
    iget-object v14, v13, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object v6, v14

    goto :goto_10

    .line 633
    :cond_4a
    new-instance v14, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v14, v13, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    invoke-virtual {v8, v14}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    .line 634
    const/4 v14, 0x1

    iput v14, v8, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    .line 636
    .end local v13    # "rootContext":Lcom/alibaba/fastjson/parser/ParseContext;
    :goto_10
    goto :goto_11

    .line 637
    :cond_4b
    new-instance v13, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v13, v15, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    invoke-virtual {v8, v13}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    .line 638
    const/4 v13, 0x1

    iput v13, v8, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    .line 640
    .end local v4    # "ref":Ljava/lang/String;
    :goto_11
    nop

    .line 644
    const/16 v4, 0xd

    invoke-virtual {v11, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 645
    iget v13, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v13, v4, :cond_4d

    .line 648
    const/16 v4, 0x10

    invoke-virtual {v11, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 650
    invoke-virtual {v8, v15, v6, v10}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 652
    nop

    .line 852
    if-eqz v3, :cond_4c

    .line 853
    iput-object v6, v3, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 855
    :cond_4c
    invoke-virtual {v8, v15}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 652
    return-object v6

    .line 646
    :cond_4d
    :try_start_10
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string v13, "illegal ref"

    invoke-direct {v4, v13}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local v1    # "token":I
    .end local v3    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v6    # "object":Ljava/lang/Object;
    .end local v11    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v15    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v34    # "disableCircularReferenceDetect":Z
    .end local p1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .end local p2    # "type":Ljava/lang/reflect/Type;
    .end local p3    # "fieldName":Ljava/lang/Object;
    throw v4

    .line 641
    .end local v37    # "fieldValueDouble":D
    .restart local v1    # "token":I
    .restart local v3    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v6    # "object":Ljava/lang/Object;
    .restart local v11    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .local v13, "fieldValueDouble":D
    .restart local v15    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v34    # "disableCircularReferenceDetect":Z
    .restart local p1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .restart local p2    # "type":Ljava/lang/reflect/Type;
    .restart local p3    # "fieldName":Ljava/lang/Object;
    :cond_4e
    move-wide/from16 v37, v13

    .end local v13    # "fieldValueDouble":D
    .restart local v37    # "fieldValueDouble":D
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "illegal ref, "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v4, v13}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local v1    # "token":I
    .end local v3    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v6    # "object":Ljava/lang/Object;
    .end local v11    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v15    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v34    # "disableCircularReferenceDetect":Z
    .end local p1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .end local p2    # "type":Ljava/lang/reflect/Type;
    .end local p3    # "fieldName":Ljava/lang/Object;
    throw v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 852
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v12    # "typeKey":Ljava/lang/String;
    .end local v22    # "matchField":Z
    .end local v23    # "valueParsed":Z
    .end local v24    # "fieldValue":Ljava/lang/Object;
    .end local v26    # "matchFieldHash":J
    .end local v28    # "fieldValueLong":J
    .end local v30    # "fieldValueInt":I
    .end local v31    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v32    # "fieldValueFloat":F
    .end local v35    # "size":I
    .end local v36    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v37    # "fieldValueDouble":D
    .end local p4    # "fieldIndex":I
    .restart local v1    # "token":I
    .restart local v3    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v6    # "object":Ljava/lang/Object;
    .restart local v11    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v15    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v34    # "disableCircularReferenceDetect":Z
    .restart local p1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .restart local p2    # "type":Ljava/lang/reflect/Type;
    .restart local p3    # "fieldName":Ljava/lang/Object;
    :catchall_5
    move-exception v0

    move v2, v1

    goto/16 :goto_30

    .line 609
    .end local v1    # "token":I
    .restart local v0    # "key":Ljava/lang/String;
    .restart local v2    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v12    # "typeKey":Ljava/lang/String;
    .restart local v13    # "fieldValueDouble":D
    .restart local v21    # "token":I
    .restart local v22    # "matchField":Z
    .restart local v23    # "valueParsed":Z
    .restart local v24    # "fieldValue":Ljava/lang/Object;
    .restart local v26    # "matchFieldHash":J
    .restart local v28    # "fieldValueLong":J
    .restart local v30    # "fieldValueInt":I
    .restart local v31    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v32    # "fieldValueFloat":F
    .restart local v35    # "size":I
    .restart local v36    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local p4    # "fieldIndex":I
    :cond_4f
    move-wide/from16 v37, v13

    const/4 v13, 0x1

    .line 656
    .end local v13    # "fieldValueDouble":D
    .restart local v37    # "fieldValueDouble":D
    if-eqz v12, :cond_50

    :try_start_11
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51

    :cond_50
    const-string v1, "@type"

    if-ne v1, v0, :cond_5b

    .line 658
    :cond_51
    invoke-virtual {v11, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    .line 659
    iget v1, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/4 v4, 0x4

    if-ne v1, v4, :cond_5a

    .line 660
    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v1

    .line 661
    .local v1, "typeName":Ljava/lang/String;
    const/16 v4, 0x10

    invoke-virtual {v11, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 663
    instance-of v4, v9, Ljava/lang/Class;

    if-eqz v4, :cond_53

    move-object v4, v9

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 664
    iget v4, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v14, 0xd

    if-ne v4, v14, :cond_52

    .line 665
    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 666
    move-object/from16 v32, v5

    move-object/from16 v24, v12

    move/from16 v2, v21

    move-object/from16 v1, v36

    goto/16 :goto_28

    .line 664
    :cond_52
    move/from16 v13, p4

    move-object v1, v6

    move/from16 v2, v21

    move-wide/from16 v4, v26

    move/from16 v14, v34

    move/from16 v6, v35

    move-object/from16 v0, v36

    goto/16 :goto_3

    .line 671
    :cond_53
    iget-object v4, v8, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    iget-object v13, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    invoke-virtual {v7, v4, v13, v1}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getSeeAlso(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/JavaBeanInfo;Ljava/lang/String;)Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    move-result-object v4

    .line 672
    .local v4, "deserizer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    const/4 v13, 0x0

    .line 673
    .local v13, "userType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v4, :cond_56

    .line 674
    iget-object v14, v8, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    move-object/from16 v16, v0

    .end local v0    # "key":Ljava/lang/String;
    .local v16, "key":Ljava/lang/String;
    iget-object v0, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    move-object/from16 v17, v4

    .end local v4    # "deserizer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .local v17, "deserizer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    iget v4, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    invoke-virtual {v14, v1, v0, v4}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v0

    move-object v13, v0

    .line 676
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 677
    .local v0, "expectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_55

    if-eqz v13, :cond_54

    .line 678
    invoke-virtual {v0, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_54

    goto :goto_12

    .line 681
    :cond_54
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v14, "type not match"

    invoke-direct {v4, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local v3    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v6    # "object":Ljava/lang/Object;
    .end local v11    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v15    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v21    # "token":I
    .end local v34    # "disableCircularReferenceDetect":Z
    .end local p1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .end local p2    # "type":Ljava/lang/reflect/Type;
    .end local p3    # "fieldName":Ljava/lang/Object;
    throw v4

    .line 679
    .restart local v3    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v6    # "object":Ljava/lang/Object;
    .restart local v11    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v15    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v21    # "token":I
    .restart local v34    # "disableCircularReferenceDetect":Z
    .restart local p1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .restart local p2    # "type":Ljava/lang/reflect/Type;
    .restart local p3    # "fieldName":Ljava/lang/Object;
    :cond_55
    :goto_12
    iget-object v4, v8, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v4, v13}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v4

    .end local v17    # "deserizer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .restart local v4    # "deserizer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    goto :goto_13

    .line 673
    .end local v16    # "key":Ljava/lang/String;
    .local v0, "key":Ljava/lang/String;
    :cond_56
    move-object/from16 v16, v0

    move-object/from16 v17, v4

    .line 686
    .end local v0    # "key":Ljava/lang/String;
    .restart local v16    # "key":Ljava/lang/String;
    :goto_13
    instance-of v0, v4, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    if-eqz v0, :cond_58

    .line 687
    move-object v0, v4

    check-cast v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    .line 688
    .local v0, "javaBeanDeserializer":Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;
    const/4 v14, 0x0

    invoke-direct {v0, v8, v13, v10, v14}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 689
    .local v14, "typedObject":Ljava/lang/Object;
    if-eqz v12, :cond_57

    .line 690
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v17

    move-object/from16 v18, v17

    .line 691
    .local v18, "typeKeyFieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    move-object/from16 v17, v0

    move-object/from16 v0, v18

    .end local v18    # "typeKeyFieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .local v0, "typeKeyFieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .local v17, "javaBeanDeserializer":Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;
    invoke-virtual {v0, v14, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_14

    .line 689
    .end local v17    # "javaBeanDeserializer":Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;
    .local v0, "javaBeanDeserializer":Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;
    :cond_57
    move-object/from16 v17, v0

    .line 693
    .end local v0    # "javaBeanDeserializer":Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;
    :goto_14
    goto :goto_15

    .line 694
    .end local v14    # "typedObject":Ljava/lang/Object;
    :cond_58
    invoke-interface {v4, v8, v13, v10}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    move-object v14, v0

    .line 696
    .restart local v14    # "typedObject":Ljava/lang/Object;
    :goto_15
    nop

    .line 852
    if-eqz v3, :cond_59

    .line 853
    iput-object v6, v3, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 855
    :cond_59
    invoke-virtual {v8, v15}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 696
    return-object v14

    .line 698
    .end local v1    # "typeName":Ljava/lang/String;
    .end local v4    # "deserizer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v13    # "userType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "typedObject":Ljava/lang/Object;
    .end local v16    # "key":Ljava/lang/String;
    .local v0, "key":Ljava/lang/String;
    :cond_5a
    move-object/from16 v16, v0

    .end local v0    # "key":Ljava/lang/String;
    .restart local v16    # "key":Ljava/lang/String;
    :try_start_12
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local v3    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v6    # "object":Ljava/lang/Object;
    .end local v11    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v15    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v21    # "token":I
    .end local v34    # "disableCircularReferenceDetect":Z
    .end local p1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .end local p2    # "type":Ljava/lang/reflect/Type;
    .end local p3    # "fieldName":Ljava/lang/Object;
    throw v0

    .line 656
    .end local v16    # "key":Ljava/lang/String;
    .restart local v0    # "key":Ljava/lang/String;
    .restart local v3    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v6    # "object":Ljava/lang/Object;
    .restart local v11    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v15    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v21    # "token":I
    .restart local v34    # "disableCircularReferenceDetect":Z
    .restart local p1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .restart local p2    # "type":Ljava/lang/reflect/Type;
    .restart local p3    # "fieldName":Ljava/lang/Object;
    :cond_5b
    move-object/from16 v16, v0

    const/16 v14, 0xd

    .end local v0    # "key":Ljava/lang/String;
    .restart local v16    # "key":Ljava/lang/String;
    goto :goto_16

    .line 852
    .end local v2    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v12    # "typeKey":Ljava/lang/String;
    .end local v16    # "key":Ljava/lang/String;
    .end local v21    # "token":I
    .end local v22    # "matchField":Z
    .end local v23    # "valueParsed":Z
    .end local v24    # "fieldValue":Ljava/lang/Object;
    .end local v26    # "matchFieldHash":J
    .end local v28    # "fieldValueLong":J
    .end local v30    # "fieldValueInt":I
    .end local v31    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v32    # "fieldValueFloat":F
    .end local v35    # "size":I
    .end local v36    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v37    # "fieldValueDouble":D
    .end local p4    # "fieldIndex":I
    .local v4, "token":I
    :catchall_6
    move-exception v0

    move/from16 v21, v4

    move/from16 v2, v21

    .end local v4    # "token":I
    .restart local v21    # "token":I
    goto/16 :goto_30

    .end local v21    # "token":I
    .restart local v25    # "token":I
    :catchall_7
    move-exception v0

    move/from16 v2, v25

    goto/16 :goto_30

    .line 595
    .local v1, "fieldValueFloat":F
    .restart local v2    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v4, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v5    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v12    # "typeKey":Ljava/lang/String;
    .local v13, "fieldValueDouble":D
    .local v21, "key":Ljava/lang/String;
    .restart local v22    # "matchField":Z
    .restart local v23    # "valueParsed":Z
    .restart local v24    # "fieldValue":Ljava/lang/Object;
    .restart local v26    # "matchFieldHash":J
    .restart local v28    # "fieldValueLong":J
    .restart local v30    # "fieldValueInt":I
    .restart local v35    # "size":I
    .restart local v36    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local p4    # "fieldIndex":I
    :cond_5c
    move/from16 v32, v1

    move-object/from16 v31, v4

    move-wide/from16 v37, v13

    const/4 v13, 0x1

    const/16 v14, 0xd

    .end local v1    # "fieldValueFloat":F
    .end local v4    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v13    # "fieldValueDouble":D
    .restart local v31    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v32    # "fieldValueFloat":F
    .restart local v37    # "fieldValueDouble":D
    move-object/from16 v16, v21

    move/from16 v21, v25

    .line 703
    .end local v25    # "token":I
    .restart local v16    # "key":Ljava/lang/String;
    .local v21, "token":I
    :goto_16
    if-nez v6, :cond_5f

    if-nez v36, :cond_5f

    .line 704
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    move-object v1, v0

    .line 705
    .end local v6    # "object":Ljava/lang/Object;
    .local v1, "object":Ljava/lang/Object;
    if-nez v1, :cond_5d

    .line 706
    :try_start_13
    new-instance v0, Ljava/util/HashMap;

    iget-object v4, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v4, v4

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    .end local v36    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v0, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_17

    .line 852
    .end local v0    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v12    # "typeKey":Ljava/lang/String;
    .end local v16    # "key":Ljava/lang/String;
    .end local v22    # "matchField":Z
    .end local v23    # "valueParsed":Z
    .end local v24    # "fieldValue":Ljava/lang/Object;
    .end local v26    # "matchFieldHash":J
    .end local v28    # "fieldValueLong":J
    .end local v30    # "fieldValueInt":I
    .end local v31    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v32    # "fieldValueFloat":F
    .end local v35    # "size":I
    .end local v37    # "fieldValueDouble":D
    .end local p4    # "fieldIndex":I
    :catchall_8
    move-exception v0

    move-object v6, v1

    move/from16 v2, v21

    goto/16 :goto_30

    .line 705
    .restart local v2    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v12    # "typeKey":Ljava/lang/String;
    .restart local v16    # "key":Ljava/lang/String;
    .restart local v22    # "matchField":Z
    .restart local v23    # "valueParsed":Z
    .restart local v24    # "fieldValue":Ljava/lang/Object;
    .restart local v26    # "matchFieldHash":J
    .restart local v28    # "fieldValueLong":J
    .restart local v30    # "fieldValueInt":I
    .restart local v31    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v32    # "fieldValueFloat":F
    .restart local v35    # "size":I
    .restart local v36    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v37    # "fieldValueDouble":D
    .restart local p4    # "fieldIndex":I
    :cond_5d
    move-object/from16 v0, v36

    .line 708
    .end local v36    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v0    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_17
    if-nez v34, :cond_5e

    .line 709
    invoke-virtual {v8, v15, v1, v10}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    move-object v3, v4

    move-object v6, v0

    move-object v4, v1

    move-object/from16 v17, v3

    goto :goto_18

    .line 708
    :cond_5e
    move-object v6, v0

    move-object v4, v1

    move-object/from16 v17, v3

    goto :goto_18

    .line 852
    .end local v0    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "object":Ljava/lang/Object;
    .end local v2    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v12    # "typeKey":Ljava/lang/String;
    .end local v16    # "key":Ljava/lang/String;
    .end local v22    # "matchField":Z
    .end local v23    # "valueParsed":Z
    .end local v24    # "fieldValue":Ljava/lang/Object;
    .end local v26    # "matchFieldHash":J
    .end local v28    # "fieldValueLong":J
    .end local v30    # "fieldValueInt":I
    .end local v31    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v32    # "fieldValueFloat":F
    .end local v35    # "size":I
    .end local v37    # "fieldValueDouble":D
    .end local p4    # "fieldIndex":I
    .restart local v6    # "object":Ljava/lang/Object;
    :catchall_9
    move-exception v0

    move/from16 v2, v21

    goto/16 :goto_30

    .line 713
    .restart local v2    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v12    # "typeKey":Ljava/lang/String;
    .restart local v16    # "key":Ljava/lang/String;
    .restart local v22    # "matchField":Z
    .restart local v23    # "valueParsed":Z
    .restart local v24    # "fieldValue":Ljava/lang/Object;
    .restart local v26    # "matchFieldHash":J
    .restart local v28    # "fieldValueLong":J
    .restart local v30    # "fieldValueInt":I
    .restart local v31    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v32    # "fieldValueFloat":F
    .restart local v35    # "size":I
    .restart local v36    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v37    # "fieldValueDouble":D
    .restart local p4    # "fieldIndex":I
    :cond_5f
    move-object/from16 v17, v3

    move-object v4, v6

    move-object/from16 v6, v36

    .end local v3    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v36    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v4, "object":Ljava/lang/Object;
    .local v6, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v17, "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    :goto_18
    if-eqz v22, :cond_78

    .line 714
    if-nez v23, :cond_60

    .line 715
    :try_start_14
    invoke-virtual {v5, v8, v4, v9, v6}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    move-object/from16 v20, v2

    move-object/from16 v36, v6

    move-object/from16 v9, v24

    move/from16 v14, v30

    move/from16 v25, v35

    const/16 v0, 0xd

    move-object/from16 v30, v4

    move-object/from16 v24, v12

    move-wide/from16 v12, v28

    move-object/from16 v28, v31

    move/from16 v31, v32

    move-object/from16 v32, v5

    goto/16 :goto_26

    .line 852
    .end local v2    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v6    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v12    # "typeKey":Ljava/lang/String;
    .end local v16    # "key":Ljava/lang/String;
    .end local v22    # "matchField":Z
    .end local v23    # "valueParsed":Z
    .end local v24    # "fieldValue":Ljava/lang/Object;
    .end local v26    # "matchFieldHash":J
    .end local v28    # "fieldValueLong":J
    .end local v30    # "fieldValueInt":I
    .end local v31    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v32    # "fieldValueFloat":F
    .end local v35    # "size":I
    .end local v37    # "fieldValueDouble":D
    .end local p4    # "fieldIndex":I
    :catchall_a
    move-exception v0

    move-object v6, v4

    move-object/from16 v3, v17

    move/from16 v2, v21

    goto/16 :goto_30

    .line 717
    .restart local v2    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v6    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v12    # "typeKey":Ljava/lang/String;
    .restart local v16    # "key":Ljava/lang/String;
    .restart local v22    # "matchField":Z
    .restart local v23    # "valueParsed":Z
    .restart local v24    # "fieldValue":Ljava/lang/Object;
    .restart local v26    # "matchFieldHash":J
    .restart local v28    # "fieldValueLong":J
    .restart local v30    # "fieldValueInt":I
    .restart local v31    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v32    # "fieldValueFloat":F
    .restart local v35    # "size":I
    .restart local v37    # "fieldValueDouble":D
    .restart local p4    # "fieldIndex":I
    :cond_60
    if-nez v4, :cond_69

    .line 718
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v2, v0, :cond_68

    const-class v0, Ljava/lang/Integer;

    if-ne v2, v0, :cond_61

    move/from16 v1, v32

    move-wide/from16 v13, v37

    goto :goto_1c

    .line 720
    :cond_61
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v2, v0, :cond_67

    const-class v0, Ljava/lang/Long;

    if-ne v2, v0, :cond_62

    move/from16 v1, v32

    move-wide/from16 v13, v37

    goto :goto_1b

    .line 722
    :cond_62
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v2, v0, :cond_66

    const-class v0, Ljava/lang/Float;

    if-ne v2, v0, :cond_63

    move-wide/from16 v13, v37

    goto :goto_1a

    .line 724
    :cond_63
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v2, v0, :cond_65

    const-class v0, Ljava/lang/Double;

    if-ne v2, v0, :cond_64

    goto :goto_19

    :cond_64
    move-object/from16 v0, v24

    move/from16 v1, v32

    move-wide/from16 v13, v37

    goto :goto_1d

    .line 725
    :cond_65
    :goto_19
    new-instance v0, Ljava/lang/Double;

    move-wide/from16 v13, v37

    .end local v37    # "fieldValueDouble":D
    .restart local v13    # "fieldValueDouble":D
    invoke-direct {v0, v13, v14}, Ljava/lang/Double;-><init>(D)V

    move/from16 v1, v32

    .end local v24    # "fieldValue":Ljava/lang/Object;
    .local v0, "fieldValue":Ljava/lang/Object;
    goto :goto_1d

    .line 722
    .end local v0    # "fieldValue":Ljava/lang/Object;
    .end local v13    # "fieldValueDouble":D
    .restart local v24    # "fieldValue":Ljava/lang/Object;
    .restart local v37    # "fieldValueDouble":D
    :cond_66
    move-wide/from16 v13, v37

    .line 723
    .end local v37    # "fieldValueDouble":D
    .restart local v13    # "fieldValueDouble":D
    :goto_1a
    new-instance v0, Ljava/lang/Float;

    move/from16 v1, v32

    .end local v32    # "fieldValueFloat":F
    .local v1, "fieldValueFloat":F
    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    .end local v24    # "fieldValue":Ljava/lang/Object;
    .restart local v0    # "fieldValue":Ljava/lang/Object;
    goto :goto_1d

    .line 720
    .end local v0    # "fieldValue":Ljava/lang/Object;
    .end local v1    # "fieldValueFloat":F
    .end local v13    # "fieldValueDouble":D
    .restart local v24    # "fieldValue":Ljava/lang/Object;
    .restart local v32    # "fieldValueFloat":F
    .restart local v37    # "fieldValueDouble":D
    :cond_67
    move/from16 v1, v32

    move-wide/from16 v13, v37

    .line 721
    .end local v32    # "fieldValueFloat":F
    .end local v37    # "fieldValueDouble":D
    .restart local v1    # "fieldValueFloat":F
    .restart local v13    # "fieldValueDouble":D
    :goto_1b
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .end local v24    # "fieldValue":Ljava/lang/Object;
    .restart local v0    # "fieldValue":Ljava/lang/Object;
    goto :goto_1d

    .line 718
    .end local v0    # "fieldValue":Ljava/lang/Object;
    .end local v1    # "fieldValueFloat":F
    .end local v13    # "fieldValueDouble":D
    .restart local v24    # "fieldValue":Ljava/lang/Object;
    .restart local v32    # "fieldValueFloat":F
    .restart local v37    # "fieldValueDouble":D
    :cond_68
    move/from16 v1, v32

    move-wide/from16 v13, v37

    .line 719
    .end local v32    # "fieldValueFloat":F
    .end local v37    # "fieldValueDouble":D
    .restart local v1    # "fieldValueFloat":F
    .restart local v13    # "fieldValueDouble":D
    :goto_1c
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 727
    .end local v24    # "fieldValue":Ljava/lang/Object;
    .restart local v0    # "fieldValue":Ljava/lang/Object;
    :goto_1d
    move-object/from16 v3, v31

    .end local v31    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .local v3, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v9, v3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {v6, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    move/from16 v32, v1

    move-object/from16 v24, v12

    move-wide/from16 v37, v13

    move-wide/from16 v12, v28

    move/from16 v14, v30

    move-object/from16 v28, v2

    move-object/from16 v29, v6

    goto/16 :goto_25

    .line 728
    .end local v0    # "fieldValue":Ljava/lang/Object;
    .end local v1    # "fieldValueFloat":F
    .end local v3    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v13    # "fieldValueDouble":D
    .restart local v24    # "fieldValue":Ljava/lang/Object;
    .restart local v31    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v32    # "fieldValueFloat":F
    .restart local v37    # "fieldValueDouble":D
    :cond_69
    move-object/from16 v3, v31

    move/from16 v1, v32

    move-wide/from16 v13, v37

    .end local v31    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v32    # "fieldValueFloat":F
    .end local v37    # "fieldValueDouble":D
    .restart local v1    # "fieldValueFloat":F
    .restart local v3    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v13    # "fieldValueDouble":D
    if-nez v24, :cond_76

    .line 730
    :try_start_15
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    :try_end_15
    .catch Ljava/lang/IllegalAccessException; {:try_start_15 .. :try_end_15} :catch_7
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    if-eq v2, v0, :cond_74

    :try_start_16
    const-class v0, Ljava/lang/Integer;

    if-ne v2, v0, :cond_6a

    move-wide/from16 v37, v13

    move-object/from16 v9, v24

    move-object/from16 v24, v12

    move-wide/from16 v12, v28

    goto/16 :goto_21

    .line 736
    :cond_6a
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
    :try_end_16
    .catch Ljava/lang/IllegalAccessException; {:try_start_16 .. :try_end_16} :catch_4
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    if-eq v2, v0, :cond_72

    :try_start_17
    const-class v0, Ljava/lang/Long;

    if-ne v2, v0, :cond_6b

    move-object/from16 v9, v24

    goto/16 :goto_20

    .line 742
    :cond_6b
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v2, v0, :cond_70

    const-class v0, Ljava/lang/Float;

    if-ne v2, v0, :cond_6c

    move-object/from16 v9, v24

    goto :goto_1f

    .line 748
    :cond_6c
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v2, v0, :cond_6e

    const-class v0, Ljava/lang/Double;
    :try_end_17
    .catch Ljava/lang/IllegalAccessException; {:try_start_17 .. :try_end_17} :catch_1
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    if-ne v2, v0, :cond_6d

    move-object/from16 v9, v24

    goto :goto_1e

    .line 755
    :cond_6d
    move-object/from16 v9, v24

    .end local v24    # "fieldValue":Ljava/lang/Object;
    .local v9, "fieldValue":Ljava/lang/Object;
    :try_start_18
    invoke-virtual {v5, v4, v9}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v24, v12

    move-wide/from16 v37, v13

    move-wide/from16 v12, v28

    move/from16 v14, v30

    goto/16 :goto_22

    .line 748
    .end local v9    # "fieldValue":Ljava/lang/Object;
    .restart local v24    # "fieldValue":Ljava/lang/Object;
    :cond_6e
    move-object/from16 v9, v24

    .line 749
    .end local v24    # "fieldValue":Ljava/lang/Object;
    .restart local v9    # "fieldValue":Ljava/lang/Object;
    :goto_1e
    iget-boolean v0, v3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    if-eqz v0, :cond_6f

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v2, v0, :cond_6f

    .line 750
    invoke-virtual {v5, v4, v13, v14}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;D)V

    move-object/from16 v24, v12

    move-wide/from16 v37, v13

    move-wide/from16 v12, v28

    move/from16 v14, v30

    goto/16 :goto_22

    .line 752
    :cond_6f
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, v13, v14}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v5, v4, v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v24, v12

    move-wide/from16 v37, v13

    move-wide/from16 v12, v28

    move/from16 v14, v30

    goto/16 :goto_22

    .line 742
    .end local v9    # "fieldValue":Ljava/lang/Object;
    .restart local v24    # "fieldValue":Ljava/lang/Object;
    :cond_70
    move-object/from16 v9, v24

    .line 743
    .end local v24    # "fieldValue":Ljava/lang/Object;
    .restart local v9    # "fieldValue":Ljava/lang/Object;
    :goto_1f
    iget-boolean v0, v3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    if-eqz v0, :cond_71

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v2, v0, :cond_71

    .line 744
    invoke-virtual {v5, v4, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;F)V

    move-object/from16 v24, v12

    move-wide/from16 v37, v13

    move-wide/from16 v12, v28

    move/from16 v14, v30

    goto/16 :goto_22

    .line 746
    :cond_71
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v5, v4, v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_18
    .catch Ljava/lang/IllegalAccessException; {:try_start_18 .. :try_end_18} :catch_0
    .catchall {:try_start_18 .. :try_end_18} :catchall_a

    move-object/from16 v24, v12

    move-wide/from16 v37, v13

    move-wide/from16 v12, v28

    move/from16 v14, v30

    goto/16 :goto_22

    .line 757
    :catch_0
    move-exception v0

    move-object/from16 v24, v12

    move-wide/from16 v37, v13

    move-wide/from16 v12, v28

    move/from16 v14, v30

    goto/16 :goto_23

    .end local v9    # "fieldValue":Ljava/lang/Object;
    .restart local v24    # "fieldValue":Ljava/lang/Object;
    :catch_1
    move-exception v0

    move-object/from16 v9, v24

    move-object/from16 v24, v12

    move-wide/from16 v37, v13

    move-wide/from16 v12, v28

    move/from16 v14, v30

    .end local v24    # "fieldValue":Ljava/lang/Object;
    .restart local v9    # "fieldValue":Ljava/lang/Object;
    goto/16 :goto_23

    .line 736
    .end local v9    # "fieldValue":Ljava/lang/Object;
    .restart local v24    # "fieldValue":Ljava/lang/Object;
    :cond_72
    move-object/from16 v9, v24

    .line 737
    .end local v24    # "fieldValue":Ljava/lang/Object;
    .restart local v9    # "fieldValue":Ljava/lang/Object;
    :goto_20
    :try_start_19
    iget-boolean v0, v3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    if-eqz v0, :cond_73

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
    :try_end_19
    .catch Ljava/lang/IllegalAccessException; {:try_start_19 .. :try_end_19} :catch_3
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    if-ne v2, v0, :cond_73

    .line 738
    move-object/from16 v24, v12

    move-wide/from16 v37, v13

    move-wide/from16 v12, v28

    .end local v13    # "fieldValueDouble":D
    .end local v28    # "fieldValueLong":J
    .local v12, "fieldValueLong":J
    .local v24, "typeKey":Ljava/lang/String;
    .restart local v37    # "fieldValueDouble":D
    :try_start_1a
    invoke-virtual {v5, v4, v12, v13}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;J)V

    move/from16 v14, v30

    goto :goto_22

    .line 737
    .end local v24    # "typeKey":Ljava/lang/String;
    .end local v37    # "fieldValueDouble":D
    .local v12, "typeKey":Ljava/lang/String;
    .restart local v13    # "fieldValueDouble":D
    .restart local v28    # "fieldValueLong":J
    :cond_73
    move-object/from16 v24, v12

    move-wide/from16 v37, v13

    move-wide/from16 v12, v28

    .line 740
    .end local v13    # "fieldValueDouble":D
    .end local v28    # "fieldValueLong":J
    .local v12, "fieldValueLong":J
    .restart local v24    # "typeKey":Ljava/lang/String;
    .restart local v37    # "fieldValueDouble":D
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v4, v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1a
    .catch Ljava/lang/IllegalAccessException; {:try_start_1a .. :try_end_1a} :catch_2
    .catchall {:try_start_1a .. :try_end_1a} :catchall_a

    move/from16 v14, v30

    goto :goto_22

    .line 757
    :catch_2
    move-exception v0

    move/from16 v14, v30

    goto :goto_23

    .end local v24    # "typeKey":Ljava/lang/String;
    .end local v37    # "fieldValueDouble":D
    .local v12, "typeKey":Ljava/lang/String;
    .restart local v13    # "fieldValueDouble":D
    .restart local v28    # "fieldValueLong":J
    :catch_3
    move-exception v0

    move-object/from16 v24, v12

    move-wide/from16 v37, v13

    move-wide/from16 v12, v28

    move/from16 v14, v30

    .end local v13    # "fieldValueDouble":D
    .end local v28    # "fieldValueLong":J
    .local v12, "fieldValueLong":J
    .restart local v24    # "typeKey":Ljava/lang/String;
    .restart local v37    # "fieldValueDouble":D
    goto :goto_23

    .end local v9    # "fieldValue":Ljava/lang/Object;
    .end local v37    # "fieldValueDouble":D
    .local v12, "typeKey":Ljava/lang/String;
    .restart local v13    # "fieldValueDouble":D
    .local v24, "fieldValue":Ljava/lang/Object;
    .restart local v28    # "fieldValueLong":J
    :catch_4
    move-exception v0

    move-wide/from16 v37, v13

    move-object/from16 v9, v24

    move-object/from16 v24, v12

    move-wide/from16 v12, v28

    move/from16 v14, v30

    .end local v13    # "fieldValueDouble":D
    .end local v28    # "fieldValueLong":J
    .restart local v9    # "fieldValue":Ljava/lang/Object;
    .local v12, "fieldValueLong":J
    .local v24, "typeKey":Ljava/lang/String;
    .restart local v37    # "fieldValueDouble":D
    goto :goto_23

    .line 730
    .end local v9    # "fieldValue":Ljava/lang/Object;
    .end local v37    # "fieldValueDouble":D
    .local v12, "typeKey":Ljava/lang/String;
    .restart local v13    # "fieldValueDouble":D
    .local v24, "fieldValue":Ljava/lang/Object;
    .restart local v28    # "fieldValueLong":J
    :cond_74
    move-wide/from16 v37, v13

    move-object/from16 v9, v24

    move-object/from16 v24, v12

    move-wide/from16 v12, v28

    .line 731
    .end local v13    # "fieldValueDouble":D
    .end local v28    # "fieldValueLong":J
    .restart local v9    # "fieldValue":Ljava/lang/Object;
    .local v12, "fieldValueLong":J
    .local v24, "typeKey":Ljava/lang/String;
    .restart local v37    # "fieldValueDouble":D
    :goto_21
    :try_start_1b
    iget-boolean v0, v3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    if-eqz v0, :cond_75

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    :try_end_1b
    .catch Ljava/lang/IllegalAccessException; {:try_start_1b .. :try_end_1b} :catch_6
    .catchall {:try_start_1b .. :try_end_1b} :catchall_a

    if-ne v2, v0, :cond_75

    .line 732
    move/from16 v14, v30

    .end local v30    # "fieldValueInt":I
    .local v14, "fieldValueInt":I
    :try_start_1c
    invoke-virtual {v5, v4, v14}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;I)V

    goto :goto_22

    .line 731
    .end local v14    # "fieldValueInt":I
    .restart local v30    # "fieldValueInt":I
    :cond_75
    move/from16 v14, v30

    .line 734
    .end local v30    # "fieldValueInt":I
    .restart local v14    # "fieldValueInt":I
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v4, v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1c
    .catch Ljava/lang/IllegalAccessException; {:try_start_1c .. :try_end_1c} :catch_5
    .catchall {:try_start_1c .. :try_end_1c} :catchall_a

    .line 759
    :goto_22
    move/from16 v32, v1

    move-object/from16 v28, v2

    move-object/from16 v29, v6

    goto :goto_24

    .line 757
    :catch_5
    move-exception v0

    goto :goto_23

    .end local v14    # "fieldValueInt":I
    .restart local v30    # "fieldValueInt":I
    :catch_6
    move-exception v0

    move/from16 v14, v30

    .end local v30    # "fieldValueInt":I
    .restart local v14    # "fieldValueInt":I
    goto :goto_23

    .end local v9    # "fieldValue":Ljava/lang/Object;
    .end local v14    # "fieldValueInt":I
    .end local v37    # "fieldValueDouble":D
    .local v12, "typeKey":Ljava/lang/String;
    .restart local v13    # "fieldValueDouble":D
    .local v24, "fieldValue":Ljava/lang/Object;
    .restart local v28    # "fieldValueLong":J
    .restart local v30    # "fieldValueInt":I
    :catch_7
    move-exception v0

    move-wide/from16 v37, v13

    move-object/from16 v9, v24

    move/from16 v14, v30

    move-object/from16 v24, v12

    move-wide/from16 v12, v28

    .line 758
    .end local v13    # "fieldValueDouble":D
    .end local v28    # "fieldValueLong":J
    .end local v30    # "fieldValueInt":I
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    .restart local v9    # "fieldValue":Ljava/lang/Object;
    .local v12, "fieldValueLong":J
    .restart local v14    # "fieldValueInt":I
    .local v24, "typeKey":Ljava/lang/String;
    .restart local v37    # "fieldValueDouble":D
    :goto_23
    move/from16 v32, v1

    .end local v1    # "fieldValueFloat":F
    .restart local v32    # "fieldValueFloat":F
    :try_start_1d
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    move-object/from16 v28, v2

    .end local v2    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v28, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v29, v6

    .end local v6    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v29, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v6, "set property error, "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v4    # "object":Ljava/lang/Object;
    .end local v11    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v15    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v17    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v21    # "token":I
    .end local v34    # "disableCircularReferenceDetect":Z
    .end local p1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .end local p2    # "type":Ljava/lang/reflect/Type;
    .end local p3    # "fieldName":Ljava/lang/Object;
    throw v1

    .line 761
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    .end local v9    # "fieldValue":Ljava/lang/Object;
    .end local v14    # "fieldValueInt":I
    .end local v29    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v32    # "fieldValueFloat":F
    .end local v37    # "fieldValueDouble":D
    .restart local v1    # "fieldValueFloat":F
    .restart local v2    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "object":Ljava/lang/Object;
    .restart local v6    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v11    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .local v12, "typeKey":Ljava/lang/String;
    .restart local v13    # "fieldValueDouble":D
    .restart local v15    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v17    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v21    # "token":I
    .local v24, "fieldValue":Ljava/lang/Object;
    .local v28, "fieldValueLong":J
    .restart local v30    # "fieldValueInt":I
    .restart local v34    # "disableCircularReferenceDetect":Z
    .restart local p1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .restart local p2    # "type":Ljava/lang/reflect/Type;
    .restart local p3    # "fieldName":Ljava/lang/Object;
    :cond_76
    move/from16 v32, v1

    move-wide/from16 v37, v13

    move-object/from16 v9, v24

    move/from16 v14, v30

    move-object/from16 v24, v12

    move-wide/from16 v12, v28

    move-object/from16 v28, v2

    move-object/from16 v29, v6

    .end local v1    # "fieldValueFloat":F
    .end local v2    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v13    # "fieldValueDouble":D
    .end local v30    # "fieldValueInt":I
    .restart local v9    # "fieldValue":Ljava/lang/Object;
    .local v12, "fieldValueLong":J
    .restart local v14    # "fieldValueInt":I
    .local v24, "typeKey":Ljava/lang/String;
    .local v28, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v29    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v32    # "fieldValueFloat":F
    .restart local v37    # "fieldValueDouble":D
    invoke-virtual {v5, v4, v9}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 763
    :goto_24
    move-object v0, v9

    .end local v9    # "fieldValue":Ljava/lang/Object;
    .local v0, "fieldValue":Ljava/lang/Object;
    :goto_25
    iget v1, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_a

    const/4 v6, 0x4

    if-ne v1, v6, :cond_77

    .line 764
    move-object/from16 v30, v4

    move-object/from16 v32, v5

    move-object/from16 v36, v29

    goto/16 :goto_27

    .line 763
    :cond_77
    move-object v9, v0

    move-object/from16 v30, v4

    move-object/from16 v20, v28

    move-object/from16 v36, v29

    move/from16 v31, v32

    move/from16 v25, v35

    const/16 v0, 0xd

    move-object/from16 v28, v3

    move-object/from16 v32, v5

    goto :goto_26

    .line 768
    .end local v0    # "fieldValue":Ljava/lang/Object;
    .end local v3    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v14    # "fieldValueInt":I
    .end local v29    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v2    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v6    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v12, "typeKey":Ljava/lang/String;
    .local v24, "fieldValue":Ljava/lang/Object;
    .local v28, "fieldValueLong":J
    .restart local v30    # "fieldValueInt":I
    .restart local v31    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_78
    move-object/from16 v9, v24

    move/from16 v14, v30

    move-object/from16 v3, v31

    move-object/from16 v24, v12

    move-wide/from16 v12, v28

    move-object/from16 v28, v2

    move-object/from16 v29, v6

    const/4 v6, 0x4

    .end local v2    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v30    # "fieldValueInt":I
    .end local v31    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v3    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v9    # "fieldValue":Ljava/lang/Object;
    .local v12, "fieldValueLong":J
    .restart local v14    # "fieldValueInt":I
    .local v24, "typeKey":Ljava/lang/String;
    .local v28, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v29    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move/from16 v31, v32

    .end local v32    # "fieldValueFloat":F
    .local v31, "fieldValueFloat":F
    move-object/from16 v1, p0

    move-object/from16 v20, v28

    .end local v28    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v20, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v2, p1

    move-object/from16 v28, v3

    .end local v3    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .local v28, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v3, v16

    move-object/from16 v30, v4

    .end local v4    # "object":Ljava/lang/Object;
    .local v30, "object":Ljava/lang/Object;
    move-object/from16 v32, v5

    .end local v5    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .local v32, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    move-object/from16 v5, p2

    move-object/from16 v36, v29

    move/from16 v25, v35

    const/16 v0, 0xd

    .end local v29    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v35    # "size":I
    .local v25, "size":I
    .restart local v36    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v6, v36

    :try_start_1e
    invoke-direct/range {v1 .. v6}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v1

    .line 769
    .local v1, "match":Z
    if-nez v1, :cond_7a

    .line 770
    iget v2, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v2, v0, :cond_79

    .line 771
    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 772
    goto :goto_27

    .line 770
    :cond_79
    const/4 v1, 0x0

    const/16 v2, 0x10

    const/4 v4, 0x1

    goto/16 :goto_2f

    .line 776
    :cond_7a
    iget v2, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v3, 0x11

    if-eq v2, v3, :cond_8a

    .line 781
    .end local v1    # "match":Z
    :goto_26
    iget v1, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_7b

    .line 782
    const/4 v1, 0x0

    const/4 v4, 0x1

    goto/16 :goto_2f

    .line 785
    :cond_7b
    iget v1, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v1, v0, :cond_88

    .line 786
    invoke-virtual {v11, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_d

    .line 787
    nop

    .line 799
    .end local v9    # "fieldValue":Ljava/lang/Object;
    .end local v12    # "fieldValueLong":J
    .end local v14    # "fieldValueInt":I
    .end local v16    # "key":Ljava/lang/String;
    .end local v20    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v22    # "matchField":Z
    .end local v23    # "valueParsed":Z
    .end local v25    # "size":I
    .end local v28    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v31    # "fieldValueFloat":F
    .end local v37    # "fieldValueDouble":D
    .end local p4    # "fieldIndex":I
    :goto_27
    move-object/from16 v3, v17

    move/from16 v2, v21

    move-object/from16 v6, v30

    move-object/from16 v1, v36

    .end local v17    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v21    # "token":I
    .end local v30    # "object":Ljava/lang/Object;
    .end local v36    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v2, "token":I
    .local v3, "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .local v6, "object":Ljava/lang/Object;
    :goto_28
    if-nez v6, :cond_86

    .line 800
    if-nez v1, :cond_7e

    .line 801
    :try_start_1f
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_c

    move-object v4, v0

    .line 802
    .end local v6    # "object":Ljava/lang/Object;
    .restart local v4    # "object":Ljava/lang/Object;
    if-nez v3, :cond_7c

    .line 803
    :try_start_20
    invoke-virtual {v8, v15, v4, v10}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_b

    move-object v3, v0

    goto :goto_29

    .line 852
    .end local v1    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v24    # "typeKey":Ljava/lang/String;
    .end local v26    # "matchFieldHash":J
    .end local v32    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :catchall_b
    move-exception v0

    move-object v6, v4

    goto/16 :goto_30

    .line 805
    .restart local v1    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v24    # "typeKey":Ljava/lang/String;
    .restart local v26    # "matchFieldHash":J
    .restart local v32    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_7c
    :goto_29
    nop

    .line 852
    if-eqz v3, :cond_7d

    .line 853
    iput-object v4, v3, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 855
    :cond_7d
    invoke-virtual {v8, v15}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 805
    return-object v4

    .line 808
    .end local v4    # "object":Ljava/lang/Object;
    .restart local v6    # "object":Ljava/lang/Object;
    :cond_7e
    :try_start_21
    iget-object v0, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructorParameters:[Ljava/lang/String;

    move-object v4, v0

    .line 809
    .local v4, "paramNames":[Ljava/lang/String;
    if-eqz v4, :cond_7f

    array-length v0, v4

    goto :goto_2a

    :cond_7f
    iget-object v0, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v0, v0

    :goto_2a
    move v5, v0

    .line 810
    .local v5, "size":I
    new-array v0, v5, [Ljava/lang/Object;

    move-object v9, v0

    .line 811
    .local v9, "params":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2b
    if-ge v0, v5, :cond_82

    .line 812
    iget-object v12, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v12, v12, v0

    iget-object v12, v12, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 814
    .local v12, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    if-eqz v4, :cond_80

    .line 815
    iget-object v13, v12, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {v1, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .local v13, "param":Ljava/lang/Object;
    goto :goto_2c

    .line 817
    .end local v13    # "param":Ljava/lang/Object;
    :cond_80
    iget-object v13, v12, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 819
    .restart local v13    # "param":Ljava/lang/Object;
    :goto_2c
    if-nez v13, :cond_81

    .line 820
    iget-object v14, v12, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-static {v14}, Lcom/alibaba/fastjson/util/TypeUtils;->defaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    move-object v13, v14

    .line 822
    :cond_81
    aput-object v13, v9, v0

    .line 811
    .end local v12    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v13    # "param":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 825
    .end local v0    # "i":I
    :cond_82
    iget-object v0, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_c

    if-eqz v0, :cond_85

    .line 827
    :try_start_22
    iget-object v0, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_8
    .catchall {:try_start_22 .. :try_end_22} :catchall_c

    move-object v6, v0

    .line 831
    nop

    .line 833
    if-eqz v4, :cond_86

    .line 834
    :try_start_23
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_84

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 835
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v7, v13}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v13

    .line 836
    .local v13, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-eqz v13, :cond_83

    .line 837
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v6, v14}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 839
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v13    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_83
    goto :goto_2d

    :cond_84
    goto :goto_2e

    .line 828
    :catch_8
    move-exception v0

    .line 829
    .local v0, "e":Ljava/lang/Exception;
    new-instance v12, Lcom/alibaba/fastjson/JSONException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "create instance error, "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v14, v14, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 830
    invoke-virtual {v14}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "token":I
    .end local v3    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v6    # "object":Ljava/lang/Object;
    .end local v11    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v15    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v34    # "disableCircularReferenceDetect":Z
    .end local p1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .end local p2    # "type":Ljava/lang/reflect/Type;
    .end local p3    # "fieldName":Ljava/lang/Object;
    throw v12

    .line 841
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "token":I
    .restart local v3    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v6    # "object":Ljava/lang/Object;
    .restart local v11    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v15    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v34    # "disableCircularReferenceDetect":Z
    .restart local p1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .restart local p2    # "type":Ljava/lang/reflect/Type;
    .restart local p3    # "fieldName":Ljava/lang/Object;
    :cond_85
    iget-object v0, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_c

    if-eqz v0, :cond_86

    .line 843
    :try_start_24
    iget-object v0, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    const/4 v12, 0x0

    invoke-virtual {v0, v12, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_9
    .catchall {:try_start_24 .. :try_end_24} :catchall_c

    move-object v6, v0

    .line 846
    goto :goto_2e

    .line 844
    :catch_9
    move-exception v0

    .line 845
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_25
    new-instance v12, Lcom/alibaba/fastjson/JSONException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "create factory method error, "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v14, v14, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "token":I
    .end local v3    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v6    # "object":Ljava/lang/Object;
    .end local v11    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v15    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v34    # "disableCircularReferenceDetect":Z
    .end local p1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .end local p2    # "type":Ljava/lang/reflect/Type;
    .end local p3    # "fieldName":Ljava/lang/Object;
    throw v12
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_c

    .line 852
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "paramNames":[Ljava/lang/String;
    .end local v5    # "size":I
    .end local v9    # "params":[Ljava/lang/Object;
    .end local v24    # "typeKey":Ljava/lang/String;
    .end local v26    # "matchFieldHash":J
    .end local v32    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v2    # "token":I
    .restart local v3    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v6    # "object":Ljava/lang/Object;
    .restart local v11    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v15    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v34    # "disableCircularReferenceDetect":Z
    .restart local p1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .restart local p2    # "type":Ljava/lang/reflect/Type;
    .restart local p3    # "fieldName":Ljava/lang/Object;
    :catchall_c
    move-exception v0

    goto :goto_30

    .line 850
    .restart local v1    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v24    # "typeKey":Ljava/lang/String;
    .restart local v26    # "matchFieldHash":J
    .restart local v32    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_86
    :goto_2e
    nop

    .line 852
    if-eqz v3, :cond_87

    .line 853
    iput-object v6, v3, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 855
    :cond_87
    invoke-virtual {v8, v15}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 850
    return-object v6

    .line 790
    .end local v1    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "token":I
    .end local v3    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v6    # "object":Ljava/lang/Object;
    .local v9, "fieldValue":Ljava/lang/Object;
    .local v12, "fieldValueLong":J
    .restart local v14    # "fieldValueInt":I
    .restart local v16    # "key":Ljava/lang/String;
    .restart local v17    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v20    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v21    # "token":I
    .restart local v22    # "matchField":Z
    .restart local v23    # "valueParsed":Z
    .restart local v25    # "size":I
    .restart local v28    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v30    # "object":Ljava/lang/Object;
    .restart local v31    # "fieldValueFloat":F
    .restart local v36    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v37    # "fieldValueDouble":D
    .restart local p4    # "fieldIndex":I
    :cond_88
    const/4 v1, 0x0

    :try_start_26
    iget v3, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v4, 0x12

    if-eq v3, v4, :cond_89

    iget v3, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_89

    .line 797
    .end local v9    # "fieldValue":Ljava/lang/Object;
    .end local v12    # "fieldValueLong":J
    .end local v14    # "fieldValueInt":I
    .end local v16    # "key":Ljava/lang/String;
    .end local v20    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v22    # "matchField":Z
    .end local v23    # "valueParsed":Z
    .end local v28    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v31    # "fieldValueFloat":F
    .end local v37    # "fieldValueDouble":D
    nop

    .line 416
    .end local v32    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :goto_2f
    move-object/from16 v9, p2

    move/from16 v13, p4

    move-object/from16 v3, v17

    move/from16 v2, v21

    move-object/from16 v12, v24

    move/from16 v6, v25

    move-wide/from16 v4, v26

    move-object/from16 v1, v30

    move/from16 v14, v34

    move-object/from16 v0, v36

    goto/16 :goto_3

    .line 791
    .restart local v9    # "fieldValue":Ljava/lang/Object;
    .restart local v12    # "fieldValueLong":J
    .restart local v14    # "fieldValueInt":I
    .restart local v16    # "key":Ljava/lang/String;
    .restart local v20    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v22    # "matchField":Z
    .restart local v23    # "valueParsed":Z
    .restart local v28    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v31    # "fieldValueFloat":F
    .restart local v32    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v37    # "fieldValueDouble":D
    :cond_89
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "syntax error, unexpect token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local v11    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v15    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v17    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v21    # "token":I
    .end local v30    # "object":Ljava/lang/Object;
    .end local v34    # "disableCircularReferenceDetect":Z
    .end local p1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .end local p2    # "type":Ljava/lang/reflect/Type;
    .end local p3    # "fieldName":Ljava/lang/Object;
    throw v0

    .line 777
    .local v1, "match":Z
    .restart local v11    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v15    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v17    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v21    # "token":I
    .restart local v30    # "object":Ljava/lang/Object;
    .restart local v34    # "disableCircularReferenceDetect":Z
    .restart local p1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .restart local p2    # "type":Ljava/lang/reflect/Type;
    .restart local p3    # "fieldName":Ljava/lang/Object;
    :cond_8a
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v2, "syntax error, unexpect token \':\'"

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local v11    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v15    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v17    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v21    # "token":I
    .end local v30    # "object":Ljava/lang/Object;
    .end local v34    # "disableCircularReferenceDetect":Z
    .end local p1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .end local p2    # "type":Ljava/lang/reflect/Type;
    .end local p3    # "fieldName":Ljava/lang/Object;
    throw v0
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_d

    .line 852
    .end local v1    # "match":Z
    .end local v9    # "fieldValue":Ljava/lang/Object;
    .end local v12    # "fieldValueLong":J
    .end local v14    # "fieldValueInt":I
    .end local v16    # "key":Ljava/lang/String;
    .end local v20    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v22    # "matchField":Z
    .end local v23    # "valueParsed":Z
    .end local v24    # "typeKey":Ljava/lang/String;
    .end local v25    # "size":I
    .end local v26    # "matchFieldHash":J
    .end local v28    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v31    # "fieldValueFloat":F
    .end local v32    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v36    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v37    # "fieldValueDouble":D
    .end local p4    # "fieldIndex":I
    .restart local v11    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v15    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v17    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v21    # "token":I
    .restart local v30    # "object":Ljava/lang/Object;
    .restart local v34    # "disableCircularReferenceDetect":Z
    .restart local p1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .restart local p2    # "type":Ljava/lang/reflect/Type;
    .restart local p3    # "fieldName":Ljava/lang/Object;
    :catchall_d
    move-exception v0

    move-object/from16 v3, v17

    move/from16 v2, v21

    move-object/from16 v6, v30

    goto :goto_30

    .end local v17    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v21    # "token":I
    .end local v30    # "object":Ljava/lang/Object;
    .end local v34    # "disableCircularReferenceDetect":Z
    .restart local v2    # "token":I
    .restart local v3    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .local v14, "disableCircularReferenceDetect":Z
    .local p4, "object":Ljava/lang/Object;
    :catchall_e
    move-exception v0

    move/from16 v34, v14

    move-object v6, v1

    .end local v14    # "disableCircularReferenceDetect":Z
    .end local p4    # "object":Ljava/lang/Object;
    .restart local v6    # "object":Ljava/lang/Object;
    .restart local v34    # "disableCircularReferenceDetect":Z
    :goto_30
    if-eqz v3, :cond_8b

    .line 853
    iput-object v6, v3, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 855
    :cond_8b
    invoke-virtual {v8, v15}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 856
    throw v0

    .line 344
    .end local v2    # "token":I
    .end local v3    # "childContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v6    # "object":Ljava/lang/Object;
    .end local v11    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v15    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v34    # "disableCircularReferenceDetect":Z
    .restart local p4    # "object":Ljava/lang/Object;
    :cond_8c
    :goto_31
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private deserialzeArrayMapping(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 123
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 124
    .local v3, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    .line 126
    .end local p4    # "object":Ljava/lang/Object;
    .local v4, "object":Ljava/lang/Object;
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v5, v0

    .line 127
    .local v5, "size":I
    const/4 v0, 0x0

    move v6, v0

    .local v6, "i":I
    :goto_0
    const/16 v0, 0x10

    const/16 v7, 0x2c

    if-ge v6, v5, :cond_31

    .line 128
    add-int/lit8 v9, v5, -0x1

    const/16 v10, 0x5d

    if-ne v6, v9, :cond_0

    const/16 v9, 0x5d

    goto :goto_1

    :cond_0
    const/16 v9, 0x2c

    .line 129
    .local v9, "seperator":C
    :goto_1
    iget-object v11, v1, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v11, v11, v6

    .line 130
    .local v11, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    iget-object v12, v11, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 131
    .local v12, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v13, v12, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 133
    .local v13, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4

    const/16 v15, 0xf

    if-ne v13, v14, :cond_6

    .line 134
    move v14, v9

    .end local v9    # "seperator":C
    .local v14, "seperator":C
    :try_start_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanLongValue()J

    move-result-wide v8

    long-to-int v9, v8

    .line 135
    .local v9, "intValue":I
    iget-boolean v8, v12, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    if-eqz v8, :cond_1

    .line 136
    iget-object v8, v12, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v8, v4, v9}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    goto :goto_2

    .line 138
    :cond_1
    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v11, v4, v8}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 141
    :goto_2
    iget-char v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v8, v7, :cond_3

    .line 142
    iget v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 143
    .local v7, "index":I
    iget v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v8, :cond_2

    const/16 v8, 0x1a

    goto :goto_3

    :cond_2
    iget-object v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 145
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_3
    iput-char v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 146
    iput v0, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 147
    .end local v7    # "index":I
    goto :goto_5

    :cond_3
    iget-char v0, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v0, v10, :cond_5

    .line 148
    iget v0, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 149
    .local v0, "index":I
    iget v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v7, :cond_4

    const/16 v8, 0x1a

    goto :goto_4

    :cond_4
    iget-object v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 151
    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_4
    iput-char v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 152
    iput v15, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 153
    .end local v0    # "index":I
    goto :goto_5

    .line 154
    :cond_5
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    .line 156
    .end local v9    # "intValue":I
    :goto_5
    move v1, v14

    goto/16 :goto_20

    .line 323
    :catch_0
    move-exception v0

    :goto_6
    move v1, v14

    goto/16 :goto_21

    .line 156
    .end local v14    # "seperator":C
    .local v9, "seperator":C
    :cond_6
    move v14, v9

    .end local v9    # "seperator":C
    .restart local v14    # "seperator":C
    :try_start_2
    const-class v8, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3

    const/16 v9, 0x22

    if-ne v13, v8, :cond_f

    .line 158
    :try_start_3
    iget-char v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1

    if-ne v8, v9, :cond_7

    .line 159
    :try_start_4
    invoke-virtual {v3, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanStringValue(C)Ljava/lang/String;

    move-result-object v8
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_0

    .local v8, "strVal":Ljava/lang/String;
    goto :goto_8

    .line 160
    .end local v8    # "strVal":Ljava/lang/String;
    :cond_7
    :try_start_5
    iget-char v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_1

    const/16 v9, 0x6e

    if-ne v8, v9, :cond_e

    :try_start_6
    iget-object v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string/jumbo v9, "null"

    iget v15, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 161
    invoke-virtual {v8, v9, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 162
    iget v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v8, 0x4

    iput v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 164
    iget v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 165
    .local v8, "index":I
    iget v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v15, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v9, v15, :cond_8

    const/16 v9, 0x1a

    goto :goto_7

    :cond_8
    iget-object v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 167
    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_7
    iput-char v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 169
    .end local v8    # "index":I
    const/4 v8, 0x0

    .line 174
    .local v8, "strVal":Ljava/lang/String;
    :goto_8
    iget-boolean v9, v12, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    if-eqz v9, :cond_9

    .line 175
    iget-object v9, v12, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v9, v4, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_9

    .line 177
    :cond_9
    invoke-virtual {v11, v4, v8}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 180
    :goto_9
    iget-char v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v9, v7, :cond_b

    .line 181
    iget v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 182
    .restart local v7    # "index":I
    iget v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v9, :cond_a

    const/16 v9, 0x1a

    goto :goto_a

    :cond_a
    iget-object v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 184
    invoke-virtual {v9, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_a
    iput-char v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 185
    iput v0, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 186
    .end local v7    # "index":I
    goto :goto_c

    :cond_b
    iget-char v0, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v0, v10, :cond_d

    .line 187
    iget v0, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 188
    .restart local v0    # "index":I
    iget v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v7, :cond_c

    const/16 v7, 0x1a

    goto :goto_b

    :cond_c
    iget-object v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 190
    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_b
    iput-char v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 191
    const/16 v7, 0xf

    iput v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 192
    .end local v0    # "index":I
    goto :goto_c

    .line 193
    :cond_d
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V
    :try_end_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_0

    .line 195
    .end local v8    # "strVal":Ljava/lang/String;
    :goto_c
    move v1, v14

    goto/16 :goto_20

    .line 171
    :cond_e
    :try_start_7
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "not match string. feild : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_1

    move-object/from16 v8, p3

    :try_start_8
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local v3    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v4    # "object":Ljava/lang/Object;
    .end local v5    # "size":I
    .end local v6    # "i":I
    .end local v11    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v12    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v13    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "seperator":C
    .end local p1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .end local p2    # "type":Ljava/lang/reflect/Type;
    .end local p3    # "fieldName":Ljava/lang/Object;
    throw v0
    :try_end_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_0

    .line 323
    .restart local v3    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v4    # "object":Ljava/lang/Object;
    .restart local v5    # "size":I
    .restart local v6    # "i":I
    .restart local v11    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v12    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v13    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v14    # "seperator":C
    .restart local p1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .restart local p2    # "type":Ljava/lang/reflect/Type;
    .restart local p3    # "fieldName":Ljava/lang/Object;
    :catch_1
    move-exception v0

    move-object/from16 v8, p3

    goto/16 :goto_6

    .line 195
    :cond_f
    move-object/from16 v8, p3

    :try_start_9
    sget-object v15, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_9} :catch_3

    if-ne v13, v15, :cond_15

    .line 196
    :try_start_a
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanLongValue()J

    move-result-wide v16

    move-wide/from16 v18, v16

    .line 197
    .local v18, "longValue":J
    iget-boolean v9, v12, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    if-eqz v9, :cond_10

    .line 198
    iget-object v9, v12, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    move-wide/from16 v0, v18

    .end local v18    # "longValue":J
    .local v0, "longValue":J
    invoke-virtual {v9, v4, v0, v1}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    goto :goto_d

    .line 200
    .end local v0    # "longValue":J
    .restart local v18    # "longValue":J
    :cond_10
    move-wide/from16 v0, v18

    .end local v18    # "longValue":J
    .restart local v0    # "longValue":J
    new-instance v9, Ljava/lang/Long;

    invoke-direct {v9, v0, v1}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v11, v4, v9}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 203
    :goto_d
    iget-char v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v9, v7, :cond_12

    .line 204
    iget v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 205
    .restart local v7    # "index":I
    iget v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v9, :cond_11

    const/16 v9, 0x1a

    goto :goto_e

    :cond_11
    iget-object v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 207
    invoke-virtual {v9, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_e
    iput-char v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 208
    const/16 v9, 0x10

    iput v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 209
    .end local v7    # "index":I
    goto :goto_10

    :cond_12
    iget-char v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v7, v10, :cond_14

    .line 210
    iget v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 211
    .restart local v7    # "index":I
    iget v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v9, :cond_13

    const/16 v9, 0x1a

    goto :goto_f

    :cond_13
    iget-object v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 213
    invoke-virtual {v9, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_f
    iput-char v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 214
    const/16 v9, 0xf

    iput v9, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 215
    .end local v7    # "index":I
    goto :goto_10

    .line 216
    :cond_14
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V
    :try_end_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_a} :catch_0

    .line 218
    .end local v0    # "longValue":J
    :goto_10
    move v1, v14

    goto/16 :goto_20

    :cond_15
    :try_start_b
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
    :try_end_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_b} :catch_3

    if-ne v13, v0, :cond_1b

    .line 219
    :try_start_c
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanBoolean()Z

    move-result v0

    .line 220
    .local v0, "booleanValue":Z
    iget-boolean v1, v12, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    if-eqz v1, :cond_16

    .line 221
    iget-object v1, v12, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v4, v0}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    goto :goto_11

    .line 223
    :cond_16
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v11, v4, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 226
    :goto_11
    iget-char v1, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v1, v7, :cond_18

    .line 227
    iget v1, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 228
    .local v1, "index":I
    iget v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v7, :cond_17

    const/16 v7, 0x1a

    goto :goto_12

    :cond_17
    iget-object v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 230
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_12
    iput-char v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 231
    const/16 v7, 0x10

    iput v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 232
    .end local v1    # "index":I
    goto :goto_14

    :cond_18
    iget-char v1, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v1, v10, :cond_1a

    .line 233
    iget v1, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 234
    .restart local v1    # "index":I
    iget v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v7, :cond_19

    const/16 v7, 0x1a

    goto :goto_13

    :cond_19
    iget-object v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 236
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_13
    iput-char v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 237
    const/16 v7, 0xf

    iput v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 238
    .end local v1    # "index":I
    goto :goto_14

    .line 239
    :cond_1a
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V
    :try_end_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_c} :catch_0

    .line 241
    .end local v0    # "booleanValue":Z
    :goto_14
    move v1, v14

    goto/16 :goto_20

    :cond_1b
    :try_start_d
    invoke-virtual {v13}, Ljava/lang/Class;->isEnum()Z

    move-result v0
    :try_end_d
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_d} :catch_3

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    .line 242
    :try_start_e
    iget-char v0, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 244
    .local v0, "ch":C
    if-ne v0, v9, :cond_1d

    .line 245
    iget-object v9, v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-virtual {v3, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v9

    .line 246
    .local v9, "enumName":Ljava/lang/String;
    if-nez v9, :cond_1c

    goto :goto_15

    .line 248
    :cond_1c
    invoke-static {v13, v9}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    :goto_15
    nop

    .line 249
    .end local v9    # "enumName":Ljava/lang/String;
    .local v1, "value":Ljava/lang/Object;
    goto :goto_16

    .end local v1    # "value":Ljava/lang/Object;
    :cond_1d
    const/16 v1, 0x30

    if-lt v0, v1, :cond_22

    const/16 v1, 0x39

    if-gt v0, v1, :cond_22

    .line 250
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanLongValue()J

    move-result-wide v7

    long-to-int v1, v7

    .line 252
    .local v1, "ordinal":I
    move-object v7, v11

    check-cast v7, Lcom/alibaba/fastjson/parser/DefaultFieldDeserializer;

    iget-object v8, v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/parser/DefaultFieldDeserializer;->getFieldValueDeserilizer(Lcom/alibaba/fastjson/parser/ParserConfig;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v7

    check-cast v7, Lcom/alibaba/fastjson/parser/EnumDeserializer;

    .line 253
    .local v7, "enumDeser":Lcom/alibaba/fastjson/parser/EnumDeserializer;
    iget-object v8, v7, Lcom/alibaba/fastjson/parser/EnumDeserializer;->ordinalEnums:[Ljava/lang/Enum;

    aget-object v8, v8, v1

    move-object v1, v8

    .line 254
    .end local v7    # "enumDeser":Lcom/alibaba/fastjson/parser/EnumDeserializer;
    .local v1, "value":Ljava/lang/Object;
    nop

    .line 258
    :goto_16
    invoke-virtual {v11, v4, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 260
    iget-char v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v8, 0x2c

    if-ne v7, v8, :cond_1f

    .line 261
    iget v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 262
    .local v7, "index":I
    iget v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v8, :cond_1e

    const/16 v8, 0x1a

    goto :goto_17

    :cond_1e
    iget-object v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 264
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_17
    iput-char v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 265
    const/16 v8, 0x10

    iput v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 266
    .end local v7    # "index":I
    goto :goto_19

    :cond_1f
    iget-char v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v7, v10, :cond_21

    .line 267
    iget v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 268
    .restart local v7    # "index":I
    iget v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v8, :cond_20

    const/16 v8, 0x1a

    goto :goto_18

    :cond_20
    iget-object v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 270
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_18
    iput-char v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 271
    const/16 v8, 0xf

    iput v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 272
    .end local v7    # "index":I
    goto :goto_19

    .line 273
    :cond_21
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 275
    .end local v0    # "ch":C
    .end local v1    # "value":Ljava/lang/Object;
    :goto_19
    move v1, v14

    goto/16 :goto_20

    .line 255
    .restart local v0    # "ch":C
    :cond_22
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "illegal enum."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local v3    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v4    # "object":Ljava/lang/Object;
    .end local v5    # "size":I
    .end local v6    # "i":I
    .end local v11    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v12    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v13    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "seperator":C
    .end local p1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .end local p2    # "type":Ljava/lang/reflect/Type;
    .end local p3    # "fieldName":Ljava/lang/Object;
    throw v1
    :try_end_e
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_e} :catch_0

    .line 275
    .end local v0    # "ch":C
    .restart local v3    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v4    # "object":Ljava/lang/Object;
    .restart local v5    # "size":I
    .restart local v6    # "i":I
    .restart local v11    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v12    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v13    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v14    # "seperator":C
    .restart local p1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .restart local p2    # "type":Ljava/lang/reflect/Type;
    .restart local p3    # "fieldName":Ljava/lang/Object;
    :cond_23
    :try_start_f
    const-class v0, Ljava/util/Date;
    :try_end_f
    .catch Ljava/lang/IllegalAccessException; {:try_start_f .. :try_end_f} :catch_3

    if-ne v13, v0, :cond_28

    :try_start_10
    iget-char v0, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v7, 0x31

    if-ne v0, v7, :cond_28

    .line 276
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanLongValue()J

    move-result-wide v0

    .line 277
    .local v0, "longValue":J
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v11, v4, v7}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 279
    iget-char v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v8, 0x2c

    if-ne v7, v8, :cond_25

    .line 280
    iget v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 281
    .restart local v7    # "index":I
    iget v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v8, :cond_24

    const/16 v8, 0x1a

    goto :goto_1a

    :cond_24
    iget-object v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 283
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_1a
    iput-char v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 284
    const/16 v8, 0x10

    iput v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 285
    .end local v7    # "index":I
    goto :goto_1c

    :cond_25
    iget-char v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v7, v10, :cond_27

    .line 286
    iget v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 287
    .restart local v7    # "index":I
    iget v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v8, :cond_26

    const/16 v8, 0x1a

    goto :goto_1b

    :cond_26
    iget-object v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 289
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_1b
    iput-char v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 290
    const/16 v8, 0xf

    iput v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 291
    .end local v7    # "index":I
    goto :goto_1c

    .line 292
    :cond_27
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V
    :try_end_10
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_10} :catch_0

    .line 294
    .end local v0    # "longValue":J
    :goto_1c
    move v1, v14

    goto/16 :goto_20

    .line 295
    :cond_28
    :try_start_11
    iget-char v0, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C
    :try_end_11
    .catch Ljava/lang/IllegalAccessException; {:try_start_11 .. :try_end_11} :catch_3

    const/16 v7, 0x5b

    if-ne v0, v7, :cond_2a

    .line 296
    :try_start_12
    iget v0, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 297
    .local v0, "index":I
    iget v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v7, :cond_29

    const/16 v8, 0x1a

    goto :goto_1d

    :cond_29
    iget-object v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 299
    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_1d
    iput-char v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 300
    const/16 v7, 0xe

    iput v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I
    :try_end_12
    .catch Ljava/lang/IllegalAccessException; {:try_start_12 .. :try_end_12} :catch_0

    .line 301
    .end local v0    # "index":I
    goto :goto_1f

    :cond_2a
    :try_start_13
    iget-char v0, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C
    :try_end_13
    .catch Ljava/lang/IllegalAccessException; {:try_start_13 .. :try_end_13} :catch_3

    const/16 v7, 0x7b

    if-ne v0, v7, :cond_2c

    .line 302
    :try_start_14
    iget v0, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 303
    .restart local v0    # "index":I
    iget v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v7, :cond_2b

    const/16 v8, 0x1a

    goto :goto_1e

    :cond_2b
    iget-object v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 305
    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_1e
    iput-char v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 306
    const/16 v7, 0xc

    iput v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I
    :try_end_14
    .catch Ljava/lang/IllegalAccessException; {:try_start_14 .. :try_end_14} :catch_0

    .line 307
    .end local v0    # "index":I
    goto :goto_1f

    .line 308
    :cond_2c
    :try_start_15
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 311
    :goto_1f
    iget-object v0, v12, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    invoke-virtual {v11, v2, v4, v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    :try_end_15
    .catch Ljava/lang/IllegalAccessException; {:try_start_15 .. :try_end_15} :catch_3

    .line 313
    const-string/jumbo v0, "syntax error"

    move v1, v14

    .end local v14    # "seperator":C
    .local v1, "seperator":C
    if-ne v1, v10, :cond_2e

    .line 314
    :try_start_16
    iget v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v8, 0xf

    if-ne v7, v8, :cond_2d

    goto :goto_20

    .line 315
    :cond_2d
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v7, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local v1    # "seperator":C
    .end local v3    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v4    # "object":Ljava/lang/Object;
    .end local v5    # "size":I
    .end local v6    # "i":I
    .end local v11    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v12    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v13    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .end local p2    # "type":Ljava/lang/reflect/Type;
    .end local p3    # "fieldName":Ljava/lang/Object;
    throw v7

    .line 323
    .restart local v1    # "seperator":C
    .restart local v3    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v4    # "object":Ljava/lang/Object;
    .restart local v5    # "size":I
    .restart local v6    # "i":I
    .restart local v11    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v12    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v13    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .restart local p2    # "type":Ljava/lang/reflect/Type;
    .restart local p3    # "fieldName":Ljava/lang/Object;
    :catch_2
    move-exception v0

    goto :goto_21

    .line 317
    :cond_2e
    const/16 v7, 0x2c

    if-ne v1, v7, :cond_30

    .line 318
    iget v7, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v8, 0x10

    if-ne v7, v8, :cond_2f

    goto :goto_20

    .line 319
    :cond_2f
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v7, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local v1    # "seperator":C
    .end local v3    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v4    # "object":Ljava/lang/Object;
    .end local v5    # "size":I
    .end local v6    # "i":I
    .end local v11    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v12    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v13    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .end local p2    # "type":Ljava/lang/reflect/Type;
    .end local p3    # "fieldName":Ljava/lang/Object;
    throw v7
    :try_end_16
    .catch Ljava/lang/IllegalAccessException; {:try_start_16 .. :try_end_16} :catch_2

    .line 325
    .restart local v1    # "seperator":C
    .restart local v3    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v4    # "object":Ljava/lang/Object;
    .restart local v5    # "size":I
    .restart local v6    # "i":I
    .restart local v11    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v12    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v13    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .restart local p2    # "type":Ljava/lang/reflect/Type;
    .restart local p3    # "fieldName":Ljava/lang/Object;
    :cond_30
    :goto_20
    nop

    .line 127
    .end local v1    # "seperator":C
    .end local v11    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v12    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v13    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_0

    .line 323
    .restart local v11    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .restart local v12    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v13    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v14    # "seperator":C
    :catch_3
    move-exception v0

    move v1, v14

    .end local v14    # "seperator":C
    .restart local v1    # "seperator":C
    goto :goto_21

    .end local v1    # "seperator":C
    .local v9, "seperator":C
    :catch_4
    move-exception v0

    move v1, v9

    .line 324
    .end local v9    # "seperator":C
    .local v0, "e":Ljava/lang/IllegalAccessException;
    .restart local v1    # "seperator":C
    :goto_21
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "set "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v12, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "error"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 328
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v1    # "seperator":C
    .end local v6    # "i":I
    .end local v11    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v12    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v13    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_31
    iget-char v0, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_33

    .line 329
    iget v0, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 330
    .local v0, "index":I
    iget v1, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_32

    const/16 v8, 0x1a

    goto :goto_22

    :cond_32
    iget-object v1, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 332
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_22
    iput-char v8, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 333
    const/16 v1, 0x10

    iput v1, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 334
    .end local v0    # "index":I
    goto :goto_23

    .line 335
    :cond_33
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 338
    :goto_23
    return-object v4
.end method

.method private parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)Z
    .locals 21
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "object"    # Ljava/lang/Object;
    .param p4, "objectType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 916
    .local p5, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    iget-object v12, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 918
    .local v12, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v2

    .line 920
    .local v2, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-nez v2, :cond_6

    .line 921
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv_64_lower(Ljava/lang/String;)J

    move-result-wide v3

    .line 922
    .local v3, "smartKeyHash":J
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArray:[J

    if-nez v5, :cond_1

    .line 923
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v5, v5

    new-array v5, v5, [J

    .line 924
    .local v5, "hashArray":[J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v7, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v8, v7

    if-ge v6, v8, :cond_0

    .line 925
    aget-object v7, v7, v6

    iget-object v7, v7, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v7, v7, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-static {v7}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv_64_lower(Ljava/lang/String;)J

    move-result-wide v7

    aput-wide v7, v5, v6

    .line 924
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 927
    .end local v6    # "i":I
    :cond_0
    invoke-static {v5}, Ljava/util/Arrays;->sort([J)V

    .line 928
    iput-object v5, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArray:[J

    .line 933
    .end local v5    # "hashArray":[J
    :cond_1
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArray:[J

    invoke-static {v5, v3, v4}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v5

    .line 934
    .local v5, "pos":I
    const/4 v6, 0x0

    .line 935
    .local v6, "is":Z
    if-gez v5, :cond_2

    const-string v7, "is"

    invoke-virtual {v10, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    move v6, v7

    if-eqz v7, :cond_2

    .line 936
    const/4 v7, 0x2

    invoke-virtual {v10, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv_64_lower(Ljava/lang/String;)J

    move-result-wide v3

    .line 937
    iget-object v7, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArray:[J

    invoke-static {v7, v3, v4}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v5

    .line 940
    :cond_2
    if-ltz v5, :cond_6

    .line 941
    iget-object v7, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArrayMapping:[I

    const/4 v8, -0x1

    if-nez v7, :cond_5

    .line 942
    iget-object v7, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArray:[J

    array-length v7, v7

    new-array v7, v7, [I

    .line 943
    .local v7, "mapping":[I
    invoke-static {v7, v8}, Ljava/util/Arrays;->fill([II)V

    .line 944
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v14, v13

    if-ge v9, v14, :cond_4

    .line 945
    iget-object v14, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArray:[J

    aget-object v13, v13, v9

    iget-object v13, v13, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v13, v13, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 946
    move/from16 v16, v9

    .end local v9    # "i":I
    .local v16, "i":I
    invoke-static {v13}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv_64_lower(Ljava/lang/String;)J

    move-result-wide v8

    .line 945
    invoke-static {v14, v8, v9}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v8

    .line 947
    .local v8, "p":I
    if-ltz v8, :cond_3

    .line 948
    aput v16, v7, v8

    .line 944
    .end local v8    # "p":I
    :cond_3
    add-int/lit8 v9, v16, 0x1

    const/4 v8, -0x1

    .end local v16    # "i":I
    .restart local v9    # "i":I
    goto :goto_1

    :cond_4
    move/from16 v16, v9

    .line 951
    .end local v9    # "i":I
    iput-object v7, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArrayMapping:[I

    .line 954
    .end local v7    # "mapping":[I
    :cond_5
    iget-object v7, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArrayMapping:[I

    aget v7, v7, v5

    .line 955
    .local v7, "deserIndex":I
    const/4 v8, -0x1

    if-eq v7, v8, :cond_6

    .line 956
    iget-object v8, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v2, v8, v7

    .line 957
    iget-object v8, v2, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v8, v8, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 958
    .local v8, "fieldClass":Ljava/lang/Class;
    if-eqz v6, :cond_6

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v8, v9, :cond_6

    const-class v9, Ljava/lang/Boolean;

    if-eq v8, v9, :cond_6

    .line 959
    const/4 v2, 0x0

    move-object v13, v2

    goto :goto_2

    .line 965
    .end local v3    # "smartKeyHash":J
    .end local v5    # "pos":I
    .end local v6    # "is":Z
    .end local v7    # "deserIndex":I
    .end local v8    # "fieldClass":Ljava/lang/Class;
    :cond_6
    move-object v13, v2

    .end local v2    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .local v13, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :goto_2
    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->SupportNonPublicField:Lcom/alibaba/fastjson/parser/Feature;

    iget v14, v2, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    .line 966
    .local v14, "mask":I
    const/4 v15, 0x0

    const/4 v9, 0x1

    if-nez v13, :cond_11

    iget-object v2, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v2, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    and-int/2addr v2, v14

    if-nez v2, :cond_8

    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget v2, v2, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->parserFeatures:I

    and-int/2addr v2, v14

    if-eqz v2, :cond_7

    goto :goto_3

    :cond_7
    const/16 v17, 0x1

    goto/16 :goto_7

    .line 969
    :cond_8
    :goto_3
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    if-nez v2, :cond_e

    .line 970
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v2, v9, v3, v9}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 971
    .local v2, "extraFieldDeserializers":Ljava/util/concurrent/ConcurrentHashMap;
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    .local v3, "c":Ljava/lang/Class;
    :goto_4
    if-eqz v3, :cond_d

    const-class v4, Ljava/lang/Object;

    if-eq v3, v4, :cond_d

    .line 972
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 973
    .local v4, "fields":[Ljava/lang/reflect/Field;
    array-length v5, v4

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v5, :cond_c

    aget-object v7, v4, v6

    .line 974
    .local v7, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    .line 975
    .local v8, "fieldName":Ljava/lang/String;
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v16

    if-eqz v16, :cond_9

    .line 976
    goto :goto_6

    .line 978
    :cond_9
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v16

    .line 979
    .local v16, "fieldModifiers":I
    and-int/lit8 v17, v16, 0x10

    if-nez v17, :cond_b

    and-int/lit8 v17, v16, 0x8

    if-eqz v17, :cond_a

    .line 980
    goto :goto_6

    .line 982
    :cond_a
    invoke-virtual {v2, v8, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    .end local v7    # "field":Ljava/lang/reflect/Field;
    .end local v8    # "fieldName":Ljava/lang/String;
    .end local v16    # "fieldModifiers":I
    :cond_b
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 971
    .end local v4    # "fields":[Ljava/lang/reflect/Field;
    :cond_c
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    goto :goto_4

    .line 985
    .end local v3    # "c":Ljava/lang/Class;
    :cond_d
    iput-object v2, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    .line 988
    .end local v2    # "extraFieldDeserializers":Ljava/util/concurrent/ConcurrentHashMap;
    :cond_e
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v10}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 989
    .local v8, "deserOrField":Ljava/lang/Object;
    if-eqz v8, :cond_10

    .line 990
    instance-of v2, v8, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    if-eqz v2, :cond_f

    .line 991
    move-object v13, v8

    check-cast v13, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    const/16 v17, 0x1

    goto :goto_7

    .line 993
    :cond_f
    move-object v7, v8

    check-cast v7, Ljava/lang/reflect/Field;

    .line 994
    .restart local v7    # "field":Ljava/lang/reflect/Field;
    invoke-virtual {v7, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 995
    new-instance v16, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v6

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v2, v16

    move-object/from16 v3, p2

    move-object/from16 v19, v7

    .end local v7    # "field":Ljava/lang/reflect/Field;
    .local v19, "field":Ljava/lang/reflect/Field;
    move-object/from16 v20, v8

    .end local v8    # "deserOrField":Ljava/lang/Object;
    .local v20, "deserOrField":Ljava/lang/Object;
    move/from16 v8, v17

    const/16 v17, 0x1

    move/from16 v9, v18

    invoke-direct/range {v2 .. v9}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;II)V

    .line 996
    .local v2, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    new-instance v3, Lcom/alibaba/fastjson/parser/DefaultFieldDeserializer;

    iget-object v4, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-direct {v3, v4, v5, v2}, Lcom/alibaba/fastjson/parser/DefaultFieldDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    move-object v13, v3

    .line 997
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v10, v13}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 989
    .end local v2    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v19    # "field":Ljava/lang/reflect/Field;
    .end local v20    # "deserOrField":Ljava/lang/Object;
    .restart local v8    # "deserOrField":Ljava/lang/Object;
    :cond_10
    move-object/from16 v20, v8

    const/16 v17, 0x1

    .end local v8    # "deserOrField":Ljava/lang/Object;
    .restart local v20    # "deserOrField":Ljava/lang/Object;
    goto :goto_7

    .line 966
    .end local v20    # "deserOrField":Ljava/lang/Object;
    :cond_11
    const/16 v17, 0x1

    .line 1002
    :goto_7
    if-nez v13, :cond_12

    .line 1003
    invoke-virtual {v0, v1, v11, v10}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->parseExtra(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1005
    return v15

    .line 1008
    :cond_12
    const/16 v2, 0x3a

    invoke-virtual {v12, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    .line 1010
    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-virtual {v13, v1, v11, v2, v3}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    .line 1012
    return v17
.end method


# virtual methods
.method protected createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 8
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;

    .line 70
    instance-of v0, p2, Ljava/lang/Class;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    move-object v0, p2

    check-cast v0, Ljava/lang/Class;

    .line 73
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 74
    .local v3, "loader":Ljava/lang/ClassLoader;
    iget-object v4, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v4, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v5, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    iget v5, v5, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 75
    .local v4, "ordered":Z
    :goto_0
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v5, v4}, Lcom/alibaba/fastjson/JSONObject;-><init>(Z)V

    .line 76
    .local v5, "object":Lcom/alibaba/fastjson/JSONObject;
    new-array v1, v1, [Ljava/lang/Class;

    aput-object v0, v1, v2

    invoke-static {v3, v1, v5}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    .line 77
    .local v1, "proxy":Ljava/lang/Object;
    return-object v1

    .line 81
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "proxy":Ljava/lang/Object;
    .end local v3    # "loader":Ljava/lang/ClassLoader;
    .end local v4    # "ordered":Z
    .end local v5    # "object":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    .line 82
    return-object v3

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->defaultConstructorParameterSize:I

    if-lez v0, :cond_3

    .line 86
    return-object v3

    .line 91
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    .line 92
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget v4, v4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->defaultConstructorParameterSize:I

    if-nez v4, :cond_5

    .line 93
    if-eqz v0, :cond_4

    .line 94
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "object":Ljava/lang/Object;
    goto :goto_1

    .line 96
    .end local v1    # "object":Ljava/lang/Object;
    :cond_4
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v1, v1, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .restart local v1    # "object":Ljava/lang/Object;
    goto :goto_1

    .line 99
    .end local v1    # "object":Ljava/lang/Object;
    :cond_5
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v3, v3, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 102
    .restart local v1    # "object":Ljava/lang/Object;
    :goto_1
    if-eqz p1, :cond_7

    iget-object v3, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v4, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v4, v4, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_7

    .line 104
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v3, v3, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v4, v3

    :goto_2
    if-ge v2, v4, :cond_7

    aget-object v5, v3, v2

    .line 105
    .local v5, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v6, v5, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    if-ne v6, v7, :cond_6

    .line 106
    const-string v6, ""

    invoke-virtual {v5, v1, v6}, Lcom/alibaba/fastjson/util/FieldInfo;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v5    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 112
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_7
    nop

    .line 114
    return-object v1

    .line 110
    .end local v1    # "object":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create instance error, class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createInstance(Ljava/util/Map;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 11
    .param p2, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1052
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 1054
    .local v0, "object":Ljava/lang/Object;
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v1, v1, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    if-nez v1, :cond_4

    .line 1055
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 1057
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1058
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v3

    .line 1059
    .local v3, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-nez v3, :cond_0

    .line 1060
    goto :goto_0

    .line 1063
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 1064
    .local v4, "value":Ljava/lang/Object;
    iget-object v5, v3, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v5, v5, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    .line 1065
    .local v5, "method":Ljava/lang/reflect/Method;
    if-eqz v5, :cond_1

    .line 1066
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    .line 1067
    .local v6, "paramType":Ljava/lang/reflect/Type;
    invoke-static {v4, v6, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v4

    .line 1068
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v7

    invoke-virtual {v5, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    .end local v6    # "paramType":Ljava/lang/reflect/Type;
    goto :goto_3

    .line 1070
    :cond_1
    iget-object v6, v3, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v6, v6, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 1071
    .local v6, "field":Ljava/lang/reflect/Field;
    iget-object v7, v3, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v7, v7, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 1072
    .local v7, "paramType":Ljava/lang/reflect/Type;
    iget-object v8, v3, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v8, v8, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    .line 1074
    .local v8, "format":Ljava/lang/String;
    if-eqz v8, :cond_2

    const-class v9, Ljava/util/Date;

    if-ne v7, v9, :cond_2

    instance-of v9, v4, Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 1076
    :try_start_0
    new-instance v9, Ljava/text/SimpleDateFormat;

    invoke-direct {v9, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v10, v4

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v9

    goto :goto_1

    .line 1077
    :catch_0
    move-exception v9

    .line 1079
    .local v9, "e":Ljava/text/ParseException;
    const/4 v4, 0x0

    .line 1080
    .end local v9    # "e":Ljava/text/ParseException;
    :goto_1
    goto :goto_2

    .line 1082
    :cond_2
    invoke-static {v4, v7, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v4

    .line 1084
    :goto_2
    invoke-virtual {v6, v0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1086
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v4    # "value":Ljava/lang/Object;
    .end local v5    # "method":Ljava/lang/reflect/Method;
    .end local v6    # "field":Ljava/lang/reflect/Field;
    .end local v7    # "paramType":Ljava/lang/reflect/Type;
    .end local v8    # "format":Ljava/lang/String;
    :goto_3
    goto :goto_0

    .line 1088
    :cond_3
    return-object v0

    .line 1091
    :cond_4
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v1, v1, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1092
    .local v1, "fieldInfoList":[Lcom/alibaba/fastjson/util/FieldInfo;
    array-length v2, v1

    .line 1093
    .local v2, "size":I
    new-array v3, v2, [Ljava/lang/Object;

    .line 1094
    .local v3, "params":[Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    if-ge v4, v2, :cond_6

    .line 1095
    aget-object v5, v1, v4

    .line 1096
    .local v5, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v6, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1097
    .local v6, "param":Ljava/lang/Object;
    if-nez v6, :cond_5

    .line 1098
    iget-object v7, v5, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-static {v7}, Lcom/alibaba/fastjson/util/TypeUtils;->defaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    .line 1100
    :cond_5
    aput-object v6, v3, v4

    .line 1094
    .end local v5    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v6    # "param":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1103
    .end local v4    # "i":I
    :cond_6
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v4, :cond_7

    .line 1105
    :try_start_1
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v4

    .line 1109
    goto :goto_5

    .line 1106
    :catch_1
    move-exception v4

    .line 1107
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "create instance error, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v7, v7, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 1108
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 1112
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_5
    return-object v0
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .line 872
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 873
    return-object v0

    .line 876
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-boolean v1, v1, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->ordered:Z

    if-eqz v1, :cond_3

    .line 877
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 878
    aget-object v2, v2, v1

    .line 879
    .local v2, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    iget-object v3, v2, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v3, v3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 880
    return-object v2

    .line 877
    .end local v2    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 883
    .end local v1    # "i":I
    :cond_2
    return-object v0

    .line 886
    :cond_3
    const/4 v1, 0x0

    .line 887
    .local v1, "low":I
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    .line 889
    .local v2, "high":I
    :goto_1
    if-gt v1, v2, :cond_6

    .line 890
    add-int v3, v1, v2

    ushr-int/lit8 v3, v3, 0x1

    .line 892
    .local v3, "mid":I
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 894
    .local v4, "fieldName":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    .line 896
    .local v5, "cmp":I
    if-gez v5, :cond_4

    .line 897
    add-int/lit8 v1, v3, 0x1

    goto :goto_2

    .line 898
    :cond_4
    if-lez v5, :cond_5

    .line 899
    add-int/lit8 v2, v3, -0x1

    .line 903
    .end local v3    # "mid":I
    .end local v4    # "fieldName":Ljava/lang/String;
    .end local v5    # "cmp":I
    :goto_2
    goto :goto_1

    .line 901
    .restart local v3    # "mid":I
    .restart local v4    # "fieldName":Ljava/lang/String;
    .restart local v5    # "cmp":I
    :cond_5
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v0, v0, v3

    return-object v0

    .line 905
    .end local v3    # "mid":I
    .end local v4    # "fieldName":Ljava/lang/String;
    .end local v5    # "cmp":I
    :cond_6
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->alterNameFieldDeserializers:Ljava/util/Map;

    if-eqz v3, :cond_7

    .line 906
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    return-object v0

    .line 909
    :cond_7
    return-object v0
.end method

.method protected getFieldDeserializerByHash(J)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .locals 5
    .param p1, "fieldHash"    # J

    .line 860
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 861
    aget-object v1, v1, v0

    .line 862
    .local v1, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    iget-object v2, v1, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-wide v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->nameHashCode:J

    cmp-long v4, v2, p1

    if-nez v4, :cond_0

    .line 863
    return-object v1

    .line 860
    .end local v1    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 867
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getSeeAlso(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/JavaBeanInfo;Ljava/lang/String;)Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;
    .locals 9
    .param p1, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p2, "beanInfo"    # Lcom/alibaba/fastjson/parser/JavaBeanInfo;
    .param p3, "typeName"    # Ljava/lang/String;

    .line 1116
    iget-object v0, p2, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1117
    return-object v1

    .line 1120
    :cond_0
    iget-object v0, p2, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->seeAlso()[Ljava/lang/Class;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 1121
    .local v4, "seeAlsoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v5

    .line 1122
    .local v5, "seeAlsoDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    instance-of v6, v5, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    if-eqz v6, :cond_2

    .line 1123
    move-object v6, v5

    check-cast v6, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    .line 1125
    .local v6, "seeAlsoJavaBeanDeser":Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;
    iget-object v7, v6, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    .line 1126
    .local v7, "subBeanInfo":Lcom/alibaba/fastjson/parser/JavaBeanInfo;
    iget-object v8, v7, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->typeName:Ljava/lang/String;

    invoke-virtual {v8, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1127
    return-object v6

    .line 1130
    :cond_1
    invoke-virtual {p0, p1, v7, p3}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getSeeAlso(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/JavaBeanInfo;Ljava/lang/String;)Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    move-result-object v8

    .line 1131
    .local v8, "subSeeAlso":Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;
    if-eqz v8, :cond_2

    .line 1132
    return-object v8

    .line 1120
    .end local v4    # "seeAlsoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "seeAlsoDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v6    # "seeAlsoJavaBeanDeser":Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;
    .end local v7    # "subBeanInfo":Lcom/alibaba/fastjson/parser/JavaBeanInfo;
    .end local v8    # "subSeeAlso":Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1137
    :cond_3
    return-object v1
.end method

.method parseExtra(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "key"    # Ljava/lang/String;

    .line 1016
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1017
    .local v0, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    iget-object v1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v1, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->IgnoreNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    iget v2, v2, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    .line 1021
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    .line 1022
    const/4 v1, 0x0

    .line 1023
    .local v1, "type":Ljava/lang/reflect/Type;
    iget-object v2, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraTypeProviders:Ljava/util/List;

    .line 1024
    .local v2, "extraTypeProviders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;>;"
    if-eqz v2, :cond_0

    .line 1025
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;

    .line 1026
    .local v4, "extraProvider":Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;
    invoke-interface {v4, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;->getExtraType(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 1027
    .end local v4    # "extraProvider":Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;
    goto :goto_0

    .line 1030
    :cond_0
    if-nez v1, :cond_1

    .line 1031
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 1032
    :cond_1
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    :goto_1
    nop

    .line 1034
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, p2, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessable;

    if-eqz v4, :cond_2

    .line 1035
    move-object v4, p2

    check-cast v4, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessable;

    .line 1036
    .local v4, "extraProcessable":Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessable;
    invoke-interface {v4, p3, v3}, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessable;->processExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1037
    return-void

    .line 1040
    .end local v4    # "extraProcessable":Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessable;
    :cond_2
    iget-object v4, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraProcessors:Ljava/util/List;

    .line 1041
    .local v4, "extraProcessors":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;>;"
    if-eqz v4, :cond_3

    .line 1042
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;

    .line 1043
    .local v6, "process":Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;
    invoke-interface {v6, p2, p3, v3}, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;->processExtra(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1044
    .end local v6    # "process":Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;
    goto :goto_2

    .line 1046
    :cond_3
    return-void

    .line 1018
    .end local v1    # "type":Ljava/lang/reflect/Type;
    .end local v2    # "extraTypeProviders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;>;"
    .end local v3    # "value":Ljava/lang/Object;
    .end local v4    # "extraProcessors":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;>;"
    :cond_4
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setter not found, class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", property "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

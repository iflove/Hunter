.class public final Lcom/alibaba/fastjson/serializer/MapSerializer;
.super Ljava/lang/Object;
.source "MapSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 18
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 37
    .local v3, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    if-nez v2, :cond_0

    .line 38
    invoke-virtual {v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 39
    return-void

    .line 42
    :cond_0
    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    .line 43
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 44
    .local v4, "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Lcom/alibaba/fastjson/JSONObject;

    const/4 v7, 0x0

    if-eq v4, v5, :cond_1

    const-class v5, Ljava/util/HashMap;

    if-eq v4, v5, :cond_1

    const-class v5, Ljava/util/LinkedHashMap;

    if-ne v4, v5, :cond_2

    .line 45
    :cond_1
    const-string v5, "@type"

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 47
    .local v5, "containsKey":Z
    :goto_0
    iget v8, v3, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v9, v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_4

    .line 48
    instance-of v8, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v8, :cond_3

    .line 49
    move-object v8, v0

    check-cast v8, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v8}, Lcom/alibaba/fastjson/JSONObject;->getInnerMap()Ljava/util/Map;

    move-result-object v0

    move-object v8, v0

    goto :goto_1

    .line 48
    :cond_3
    move-object v8, v0

    .line 51
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .local v8, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :goto_1
    nop

    instance-of v0, v8, Ljava/util/SortedMap;

    if-nez v0, :cond_5

    instance-of v0, v8, Ljava/util/LinkedHashMap;

    if-nez v0, :cond_5

    .line 53
    :try_start_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, v8}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .restart local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    move-object v8, v0

    goto :goto_2

    .line 54
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .restart local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :catch_0
    move-exception v0

    goto :goto_2

    .line 47
    .end local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .restart local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :cond_4
    move-object v8, v0

    .line 60
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .restart local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :cond_5
    :goto_2
    iget-object v0, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, v2}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 61
    invoke-virtual/range {p1 .. p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    .line 62
    return-void

    .line 65
    :cond_6
    iget-object v9, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 66
    .local v9, "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    move-object/from16 v10, p3

    invoke-virtual {v1, v9, v2, v10, v7}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 68
    const/16 v0, 0x7b

    :try_start_1
    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 70
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->incrementIndent()V

    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v11, 0x0

    .line 75
    .local v11, "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    const/4 v12, 0x1

    .line 77
    .local v12, "first":Z
    iget v13, v3, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v14, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v14, v14, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    and-int/2addr v13, v14

    if-eqz v13, :cond_7

    .line 78
    if-nez v5, :cond_7

    .line 79
    :try_start_2
    iget-object v13, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    iget-object v13, v13, Lcom/alibaba/fastjson/serializer/SerializeConfig;->typeKey:Ljava/lang/String;

    invoke-virtual {v3, v13, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    .line 80
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    const/4 v12, 0x0

    goto :goto_3

    .line 152
    .end local v0    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v11    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .end local v12    # "first":Z
    :catchall_0
    move-exception v0

    move-object/from16 v17, v4

    goto/16 :goto_9

    .line 85
    .restart local v0    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v11    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .restart local v12    # "first":Z
    :cond_7
    :goto_3
    :try_start_3
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_12

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 86
    .local v13, "entry":Ljava/util/Map$Entry;
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    .line 88
    .local v14, "value":Ljava/lang/Object;
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    .line 90
    .local v15, "entryKey":Ljava/lang/Object;
    invoke-virtual {v1, v2, v15}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->applyName(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_8

    .line 91
    goto :goto_5

    .line 94
    :cond_8
    invoke-virtual {v1, v2, v15, v14}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_9

    .line 95
    goto :goto_5

    .line 98
    :cond_9
    invoke-virtual {v1, v2, v15, v14}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->processKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v15, v16

    .line 99
    invoke-static {v1, v2, v15, v14}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v14, v16

    .line 101
    if-nez v14, :cond_a

    .line 102
    :try_start_4
    iget v6, v3, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v2, v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    and-int/2addr v2, v6

    if-nez v2, :cond_a

    .line 103
    nop

    .line 85
    .end local v13    # "entry":Ljava/util/Map$Entry;
    .end local v14    # "value":Ljava/lang/Object;
    .end local v15    # "entryKey":Ljava/lang/Object;
    :goto_5
    move-object/from16 v2, p2

    goto :goto_4

    .line 107
    .restart local v13    # "entry":Ljava/util/Map$Entry;
    .restart local v14    # "value":Ljava/lang/Object;
    .restart local v15    # "entryKey":Ljava/lang/Object;
    :cond_a
    :try_start_5
    instance-of v2, v15, Ljava/lang/String;

    const/16 v6, 0x2c

    if-eqz v2, :cond_d

    .line 108
    move-object v2, v15

    check-cast v2, Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 110
    .local v2, "key":Ljava/lang/String;
    if-nez v12, :cond_b

    .line 111
    :try_start_6
    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 114
    :cond_b
    :try_start_7
    iget v6, v3, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object/from16 v17, v4

    .end local v4    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v17, "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_8
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v4, v6

    if-eqz v4, :cond_c

    .line 115
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 117
    :cond_c
    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    .line 118
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_7

    .line 119
    .end local v17    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_d
    move-object/from16 v17, v4

    const/4 v4, 0x1

    .end local v4    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v17    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v12, :cond_e

    .line 120
    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 123
    :cond_e
    iget v2, v3, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringKeyAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v6, v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v2, v6

    if-eqz v2, :cond_f

    instance-of v2, v15, Ljava/lang/Enum;

    if-nez v2, :cond_f

    .line 124
    invoke-static {v15}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "strEntryKey":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    .line 126
    .end local v2    # "strEntryKey":Ljava/lang/String;
    goto :goto_6

    .line 127
    :cond_f
    invoke-virtual {v1, v15}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 130
    :goto_6
    const/16 v2, 0x3a

    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 133
    :goto_7
    const/4 v12, 0x0

    .line 135
    if-nez v14, :cond_10

    .line 136
    invoke-virtual {v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 137
    move-object/from16 v2, p2

    move-object/from16 v4, v17

    goto/16 :goto_4

    .line 140
    :cond_10
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 142
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x0

    if-ne v2, v0, :cond_11

    .line 143
    invoke-interface {v11, v1, v14, v15, v6}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto :goto_8

    .line 145
    :cond_11
    move-object v0, v2

    .line 146
    iget-object v4, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->get(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v4

    .line 148
    .end local v11    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .local v4, "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    invoke-interface {v4, v1, v14, v15, v6}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object v11, v4

    .line 150
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .end local v13    # "entry":Ljava/util/Map$Entry;
    .end local v14    # "value":Ljava/lang/Object;
    .end local v15    # "entryKey":Ljava/lang/Object;
    .restart local v11    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :goto_8
    move-object/from16 v2, p2

    move-object/from16 v4, v17

    goto/16 :goto_4

    .line 152
    .end local v0    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v11    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .end local v12    # "first":Z
    :catchall_1
    move-exception v0

    goto :goto_9

    .line 85
    .end local v17    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v0    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v4, "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v11    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .restart local v12    # "first":Z
    :cond_12
    move-object/from16 v17, v4

    .line 152
    .end local v0    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v11    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .end local v12    # "first":Z
    .restart local v17    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object v9, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 153
    nop

    .line 155
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->decrementIdent()V

    .line 156
    iget v0, v3, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v2, v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_13

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_13

    .line 157
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 159
    :cond_13
    const/16 v0, 0x7d

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 160
    return-void

    .line 152
    .end local v17    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_2
    move-exception v0

    move-object/from16 v17, v4

    .end local v4    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v17    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_9
    iput-object v9, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 153
    throw v0
.end method

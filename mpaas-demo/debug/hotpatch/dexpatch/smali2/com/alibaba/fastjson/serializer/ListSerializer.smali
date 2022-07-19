.class public final Lcom/alibaba/fastjson/serializer/ListSerializer;
.super Ljava/lang/Object;
.source "ListSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 17
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

    move-object/from16 v3, p3

    iget-object v4, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 37
    .local v4, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    iget v0, v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v5, v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v7, v0

    .line 39
    .local v7, "writeClassName":Z
    const/4 v0, 0x0

    .line 40
    .local v0, "elementType":Ljava/lang/reflect/Type;
    if-eqz v7, :cond_1

    .line 41
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/util/TypeUtils;->getCollectionItemType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    move-object v8, v0

    goto :goto_1

    .line 40
    :cond_1
    move-object v8, v0

    .line 44
    .end local v0    # "elementType":Ljava/lang/reflect/Type;
    .local v8, "elementType":Ljava/lang/reflect/Type;
    :goto_1
    const-string v0, "[]"

    if-nez v2, :cond_3

    .line 45
    iget v5, v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v6, v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_2

    .line 46
    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 48
    :cond_2
    invoke-virtual {v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 50
    :goto_2
    return-void

    .line 53
    :cond_3
    move-object v9, v2

    check-cast v9, Ljava/util/List;

    .line 54
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    .line 56
    .local v10, "size":I
    if-nez v10, :cond_4

    .line 57
    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 58
    return-void

    .line 61
    :cond_4
    iget-object v11, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 63
    .local v11, "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    iget v0, v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v12, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v12, v12, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v12

    if-nez v0, :cond_6

    .line 64
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerialContext;

    invoke-direct {v0, v11, v2, v3, v5}, Lcom/alibaba/fastjson/serializer/SerialContext;-><init>(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v0, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 65
    iget-object v0, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    if-nez v0, :cond_5

    .line 66
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    .line 68
    :cond_5
    iget-object v0, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    iget-object v12, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    invoke-virtual {v0, v2, v12}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_6
    const/4 v12, 0x0

    .line 73
    .local v12, "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :try_start_0
    iget v0, v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v13, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v13, v13, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v13

    const/16 v13, 0x2c

    const/16 v14, 0x5d

    const/16 v15, 0x5b

    if-eqz v0, :cond_b

    .line 74
    invoke-virtual {v4, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 75
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->incrementIndent()V

    .line 77
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    if-ge v0, v10, :cond_a

    .line 78
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 79
    .local v6, "item":Ljava/lang/Object;
    if-eqz v0, :cond_7

    .line 80
    invoke-virtual {v4, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 83
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 84
    if-eqz v6, :cond_9

    .line 85
    iget-object v15, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    if-eqz v15, :cond_8

    iget-object v15, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    invoke-virtual {v15, v6}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 86
    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    goto :goto_4

    .line 88
    :cond_8
    iget-object v15, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v15, v13}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->get(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v13

    move-object v12, v13

    .line 89
    new-instance v13, Lcom/alibaba/fastjson/serializer/SerialContext;

    invoke-direct {v13, v11, v2, v3, v5}, Lcom/alibaba/fastjson/serializer/SerialContext;-><init>(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 90
    .local v13, "itemContext":Lcom/alibaba/fastjson/serializer/SerialContext;
    iput-object v13, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 91
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v12, v1, v6, v15, v8}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    .line 92
    .end local v13    # "itemContext":Lcom/alibaba/fastjson/serializer/SerialContext;
    goto :goto_4

    .line 94
    :cond_9
    iget-object v13, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 77
    .end local v6    # "item":Ljava/lang/Object;
    :goto_4
    add-int/lit8 v0, v0, 0x1

    const/16 v13, 0x2c

    goto :goto_3

    .line 98
    .end local v0    # "i":I
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->decrementIdent()V

    .line 99
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 100
    invoke-virtual {v4, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    iput-object v11, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 101
    return-void

    .line 106
    :cond_b
    :try_start_1
    iget v0, v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v0, v6

    .line 107
    .local v0, "newcount":I
    iget-object v13, v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v13, v13

    if-le v0, v13, :cond_d

    .line 108
    iget-object v13, v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v13, :cond_c

    .line 109
    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_5

    .line 111
    :cond_c
    invoke-virtual {v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    .line 112
    const/4 v0, 0x1

    .line 115
    :cond_d
    :goto_5
    iget-object v13, v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v14, v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v15, v13, v14

    .line 116
    iput v0, v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 118
    .end local v0    # "newcount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v13

    if-ge v0, v13, :cond_19

    .line 119
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 120
    .local v13, "item":Ljava/lang/Object;
    if-eqz v0, :cond_10

    .line 123
    iget v14, v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v14, v6

    .line 124
    .local v14, "newcount":I
    iget-object v15, v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v15, v15

    if-le v14, v15, :cond_f

    .line 125
    iget-object v15, v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v15, :cond_e

    .line 126
    invoke-virtual {v4, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_7

    .line 128
    :cond_e
    invoke-virtual {v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    .line 129
    const/4 v14, 0x1

    .line 132
    :cond_f
    :goto_7
    iget-object v15, v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v5, v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v16, 0x2c

    aput-char v16, v15, v5

    .line 133
    iput v14, v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    goto :goto_8

    .line 120
    .end local v14    # "newcount":I
    :cond_10
    const/16 v16, 0x2c

    .line 137
    :goto_8
    if-nez v13, :cond_11

    .line 138
    const-string/jumbo v5, "null"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/4 v14, 0x0

    goto/16 :goto_c

    .line 140
    :cond_11
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 142
    .local v5, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v14, Ljava/lang/Integer;

    if-ne v5, v14, :cond_12

    .line 143
    move-object v14, v13

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v4, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    const/4 v14, 0x0

    goto/16 :goto_c

    .line 144
    :cond_12
    const-class v14, Ljava/lang/Long;

    if-ne v5, v14, :cond_14

    .line 145
    move-object v14, v13

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 146
    .local v14, "val":J
    if-eqz v7, :cond_13

    .line 147
    invoke-virtual {v4, v14, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 148
    const/16 v6, 0x4c

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_9

    .line 150
    :cond_13
    invoke-virtual {v4, v14, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 152
    .end local v14    # "val":J
    :goto_9
    const/4 v14, 0x0

    goto :goto_c

    :cond_14
    const-class v6, Ljava/lang/String;

    if-ne v5, v6, :cond_16

    .line 153
    move-object v6, v13

    check-cast v6, Ljava/lang/String;

    .line 155
    .local v6, "itemStr":Ljava/lang/String;
    iget v14, v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v15, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v15, v15, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v14, v15

    if-eqz v14, :cond_15

    .line 156
    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    goto :goto_a

    .line 158
    :cond_15
    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v4, v6, v14, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;CZ)V

    .line 160
    .end local v6    # "itemStr":Ljava/lang/String;
    :goto_a
    const/4 v14, 0x0

    goto :goto_c

    .line 161
    :cond_16
    iget v6, v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v14, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v14, v14, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v6, v14

    if-nez v6, :cond_17

    .line 162
    new-instance v6, Lcom/alibaba/fastjson/serializer/SerialContext;

    const/4 v14, 0x0

    invoke-direct {v6, v11, v2, v3, v14}, Lcom/alibaba/fastjson/serializer/SerialContext;-><init>(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 163
    .local v6, "itemContext":Lcom/alibaba/fastjson/serializer/SerialContext;
    iput-object v6, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    goto :goto_b

    .line 161
    .end local v6    # "itemContext":Lcom/alibaba/fastjson/serializer/SerialContext;
    :cond_17
    const/4 v14, 0x0

    .line 166
    :goto_b
    iget-object v6, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    if-eqz v6, :cond_18

    iget-object v6, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    invoke-virtual {v6, v13}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 167
    invoke-virtual {v1, v13}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    goto :goto_c

    .line 169
    :cond_18
    iget-object v6, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v6, v15}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->get(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v6

    move-object v12, v6

    .line 170
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v12, v1, v13, v6, v8}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    .line 118
    .end local v5    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v13    # "item":Ljava/lang/Object;
    :goto_c
    add-int/lit8 v0, v0, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto/16 :goto_6

    .line 177
    .end local v0    # "i":I
    :cond_19
    iget v0, v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v5, 0x1

    add-int/2addr v0, v5

    .line 178
    .local v0, "newcount":I
    iget-object v5, v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v5, v5

    if-le v0, v5, :cond_1b

    .line 179
    iget-object v5, v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v5, :cond_1a

    .line 180
    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_d

    .line 182
    :cond_1a
    invoke-virtual {v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    .line 183
    const/4 v0, 0x1

    .line 186
    :cond_1b
    :goto_d
    iget-object v5, v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v6, v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v13, 0x5d

    aput-char v13, v5, v6

    .line 187
    iput v0, v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    .end local v0    # "newcount":I
    iput-object v11, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 191
    nop

    .line 192
    return-void

    .line 190
    :catchall_0
    move-exception v0

    iput-object v11, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 191
    throw v0
.end method

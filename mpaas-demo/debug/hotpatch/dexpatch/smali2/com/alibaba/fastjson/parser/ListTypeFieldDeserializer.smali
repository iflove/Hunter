.class Lcom/alibaba/fastjson/parser/ListTypeFieldDeserializer;
.super Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
.source "ListTypeFieldDeserializer.java"


# instance fields
.field private final array:Z

.field private deserializer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

.field private final itemType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V
    .locals 3
    .param p1, "mapping"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p3, "fieldInfo"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ")V"
        }
    .end annotation

    .line 24
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v0, 0xe

    invoke-direct {p0, p2, p3, v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;I)V

    .line 26
    iget-object v0, p3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 27
    .local v0, "fieldType":Ljava/lang/reflect/Type;
    iget-object v1, p3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 28
    .local v1, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 29
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/fastjson/parser/ListTypeFieldDeserializer;->itemType:Ljava/lang/reflect/Type;

    .line 30
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alibaba/fastjson/parser/ListTypeFieldDeserializer;->array:Z

    goto :goto_0

    .line 32
    :cond_0
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getCollectionItemType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/fastjson/parser/ListTypeFieldDeserializer;->itemType:Ljava/lang/reflect/Type;

    .line 33
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/alibaba/fastjson/parser/ListTypeFieldDeserializer;->array:Z

    .line 35
    :goto_0
    return-void
.end method


# virtual methods
.method final parseArray(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/util/Collection;)V
    .locals 18
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "objectType"    # Ljava/lang/reflect/Type;
    .param p3, "array"    # Ljava/util/Collection;

    .line 82
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/ListTypeFieldDeserializer;->itemType:Ljava/lang/reflect/Type;

    .line 83
    .local v4, "itemType":Ljava/lang/reflect/Type;
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/ListTypeFieldDeserializer;->deserializer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 85
    .local v5, "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    instance-of v6, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_c

    .line 86
    instance-of v6, v4, Ljava/lang/reflect/TypeVariable;

    const/4 v9, -0x1

    if-eqz v6, :cond_4

    .line 87
    move-object v6, v4

    check-cast v6, Ljava/lang/reflect/TypeVariable;

    .line 88
    .local v6, "typeVar":Ljava/lang/reflect/TypeVariable;
    move-object v10, v2

    check-cast v10, Ljava/lang/reflect/ParameterizedType;

    .line 90
    .local v10, "paramType":Ljava/lang/reflect/ParameterizedType;
    const/4 v11, 0x0

    .line 91
    .local v11, "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v10}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v12

    instance-of v12, v12, Ljava/lang/Class;

    if-eqz v12, :cond_0

    .line 92
    invoke-interface {v10}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v12

    move-object v11, v12

    check-cast v11, Ljava/lang/Class;

    .line 95
    :cond_0
    const/4 v12, -0x1

    .line 96
    .local v12, "paramIndex":I
    if-eqz v11, :cond_2

    .line 97
    const/4 v13, 0x0

    .local v13, "i":I
    invoke-virtual {v11}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v14

    array-length v14, v14

    .local v14, "size":I
    :goto_0
    if-ge v13, v14, :cond_2

    .line 98
    invoke-virtual {v11}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v15

    aget-object v15, v15, v13

    .line 99
    .local v15, "item":Ljava/lang/reflect/TypeVariable;
    invoke-interface {v15}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 100
    move v12, v13

    .line 101
    goto :goto_1

    .line 97
    .end local v15    # "item":Ljava/lang/reflect/TypeVariable;
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 106
    .end local v13    # "i":I
    .end local v14    # "size":I
    :cond_2
    :goto_1
    if-eq v12, v9, :cond_3

    .line 107
    invoke-interface {v10}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v7

    aget-object v4, v7, v12

    .line 108
    iget-object v7, v0, Lcom/alibaba/fastjson/parser/ListTypeFieldDeserializer;->itemType:Ljava/lang/reflect/Type;

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 109
    iget-object v7, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v5

    .line 112
    .end local v6    # "typeVar":Ljava/lang/reflect/TypeVariable;
    .end local v10    # "paramType":Ljava/lang/reflect/ParameterizedType;
    .end local v11    # "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v12    # "paramIndex":I
    :cond_3
    goto/16 :goto_7

    :cond_4
    instance-of v6, v4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_b

    .line 113
    move-object v6, v4

    check-cast v6, Ljava/lang/reflect/ParameterizedType;

    .line 114
    .local v6, "parameterizedItemType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v6}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v7

    .line 115
    .local v7, "itemActualTypeArgs":[Ljava/lang/reflect/Type;
    array-length v8, v7

    const/4 v10, 0x1

    if-ne v8, v10, :cond_9

    const/4 v8, 0x0

    aget-object v10, v7, v8

    instance-of v10, v10, Ljava/lang/reflect/TypeVariable;

    if-eqz v10, :cond_9

    .line 116
    aget-object v10, v7, v8

    move-object v8, v10

    check-cast v8, Ljava/lang/reflect/TypeVariable;

    .line 117
    .local v8, "typeVar":Ljava/lang/reflect/TypeVariable;
    move-object v10, v2

    check-cast v10, Ljava/lang/reflect/ParameterizedType;

    .line 119
    .restart local v10    # "paramType":Ljava/lang/reflect/ParameterizedType;
    const/4 v11, 0x0

    .line 120
    .restart local v11    # "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v10}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v12

    instance-of v12, v12, Ljava/lang/Class;

    if-eqz v12, :cond_5

    .line 121
    invoke-interface {v10}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v12

    move-object v11, v12

    check-cast v11, Ljava/lang/Class;

    .line 124
    :cond_5
    const/4 v12, -0x1

    .line 125
    .restart local v12    # "paramIndex":I
    if-eqz v11, :cond_8

    .line 126
    const/4 v13, 0x0

    .restart local v13    # "i":I
    invoke-virtual {v11}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v14

    array-length v14, v14

    .restart local v14    # "size":I
    :goto_2
    if-ge v13, v14, :cond_7

    .line 127
    invoke-virtual {v11}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v15

    aget-object v15, v15, v13

    .line 128
    .restart local v15    # "item":Ljava/lang/reflect/TypeVariable;
    invoke-interface {v15}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v17, v5

    .end local v5    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .local v17, "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    invoke-interface {v8}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 129
    move v12, v13

    .line 130
    goto :goto_3

    .line 126
    .end local v15    # "item":Ljava/lang/reflect/TypeVariable;
    :cond_6
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v5, v17

    const/4 v9, -0x1

    goto :goto_2

    .end local v17    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .restart local v5    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_7
    move-object/from16 v17, v5

    .end local v5    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .restart local v17    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    goto :goto_3

    .line 125
    .end local v13    # "i":I
    .end local v14    # "size":I
    .end local v17    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .restart local v5    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_8
    move-object/from16 v17, v5

    .line 136
    .end local v5    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .restart local v17    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :goto_3
    const/4 v5, -0x1

    if-eq v12, v5, :cond_a

    .line 137
    invoke-interface {v10}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    aget-object v5, v5, v12

    const/4 v9, 0x0

    aput-object v5, v7, v9

    .line 138
    new-instance v5, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;

    invoke-interface {v6}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v9

    invoke-interface {v6}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v13

    invoke-direct {v5, v7, v9, v13}, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    move-object v4, v5

    goto :goto_4

    .line 115
    .end local v8    # "typeVar":Ljava/lang/reflect/TypeVariable;
    .end local v10    # "paramType":Ljava/lang/reflect/ParameterizedType;
    .end local v11    # "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v12    # "paramIndex":I
    .end local v17    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .restart local v5    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_9
    move-object/from16 v17, v5

    .line 141
    .end local v5    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v6    # "parameterizedItemType":Ljava/lang/reflect/ParameterizedType;
    .end local v7    # "itemActualTypeArgs":[Ljava/lang/reflect/Type;
    .restart local v17    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_a
    :goto_4
    move-object/from16 v5, v17

    goto :goto_7

    .line 112
    .end local v17    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .restart local v5    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_b
    move-object/from16 v17, v5

    .end local v5    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .restart local v17    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    goto :goto_6

    .line 142
    .end local v17    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .restart local v5    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_c
    move-object/from16 v17, v5

    .end local v5    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .restart local v17    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    instance-of v5, v4, Ljava/lang/reflect/TypeVariable;

    if-eqz v5, :cond_e

    instance-of v5, v2, Ljava/lang/Class;

    if-eqz v5, :cond_e

    .line 143
    move-object v5, v2

    check-cast v5, Ljava/lang/Class;

    .line 144
    .local v5, "objectClass":Ljava/lang/Class;
    move-object v6, v4

    check-cast v6, Ljava/lang/reflect/TypeVariable;

    .line 145
    .local v6, "typeVar":Ljava/lang/reflect/TypeVariable;
    invoke-virtual {v5}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    .line 147
    const/4 v7, 0x0

    .local v7, "i":I
    invoke-virtual {v5}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v8

    array-length v8, v8

    .local v8, "size":I
    :goto_5
    if-ge v7, v8, :cond_e

    .line 148
    invoke-virtual {v5}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v9

    aget-object v9, v9, v7

    .line 149
    .local v9, "item":Ljava/lang/reflect/TypeVariable;
    invoke-interface {v9}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 150
    invoke-interface {v9}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v10

    .line 151
    .local v10, "bounds":[Ljava/lang/reflect/Type;
    array-length v11, v10

    const/4 v12, 0x1

    if-ne v11, v12, :cond_e

    .line 152
    const/4 v11, 0x0

    aget-object v4, v10, v11

    move-object/from16 v5, v17

    goto :goto_7

    .line 147
    .end local v9    # "item":Ljava/lang/reflect/TypeVariable;
    .end local v10    # "bounds":[Ljava/lang/reflect/Type;
    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 159
    .end local v5    # "objectClass":Ljava/lang/Class;
    .end local v6    # "typeVar":Ljava/lang/reflect/TypeVariable;
    .end local v7    # "i":I
    .end local v8    # "size":I
    :cond_e
    :goto_6
    move-object/from16 v5, v17

    .end local v17    # "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .local v5, "itemTypeDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :goto_7
    iget-object v6, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 161
    .local v6, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    if-nez v5, :cond_f

    .line 162
    iget-object v7, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v7

    iput-object v7, v0, Lcom/alibaba/fastjson/parser/ListTypeFieldDeserializer;->deserializer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-object v5, v7

    .line 165
    :cond_f
    iget v7, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v8, 0xc

    const/16 v9, 0xe

    if-eq v7, v9, :cond_12

    .line 166
    iget v7, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v7, v8, :cond_10

    .line 167
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v1, v4, v7}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 168
    .local v7, "val":Ljava/lang/Object;
    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 169
    return-void

    .line 171
    .end local v7    # "val":Ljava/lang/Object;
    :cond_10
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exepct \'[\', but "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    invoke-static {v8}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 172
    .local v7, "errorMessage":Ljava/lang/String;
    if-eqz v2, :cond_11

    .line 173
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", type : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 175
    :cond_11
    new-instance v8, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v8, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 179
    .end local v7    # "errorMessage":Ljava/lang/String;
    :cond_12
    iget-char v7, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 180
    .local v7, "ch":I
    const/16 v10, 0xf

    const/16 v11, 0x22

    const/16 v12, 0x7b

    const/16 v13, 0x5b

    if-ne v7, v13, :cond_14

    .line 181
    iget v15, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    iput v15, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 182
    .local v15, "index":I
    iget v14, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v15, v14, :cond_13

    const/16 v14, 0x1a

    goto :goto_8

    :cond_13
    iget-object v14, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 184
    invoke-virtual {v14, v15}, Ljava/lang/String;->charAt(I)C

    move-result v14

    :goto_8
    iput-char v14, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 185
    iput v9, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 186
    .end local v15    # "index":I
    goto :goto_b

    :cond_14
    if-ne v7, v12, :cond_16

    .line 187
    iget v14, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v15, 0x1

    add-int/2addr v14, v15

    iput v14, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 188
    .local v14, "index":I
    iget v15, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v14, v15, :cond_15

    const/16 v15, 0x1a

    goto :goto_9

    :cond_15
    iget-object v15, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 190
    invoke-virtual {v15, v14}, Ljava/lang/String;->charAt(I)C

    move-result v15

    :goto_9
    iput-char v15, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 191
    iput v8, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 192
    .end local v14    # "index":I
    goto :goto_b

    :cond_16
    if-ne v7, v11, :cond_17

    .line 193
    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString()V

    goto :goto_b

    .line 194
    :cond_17
    const/16 v14, 0x5d

    if-ne v7, v14, :cond_19

    .line 195
    iget v14, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v15, 0x1

    add-int/2addr v14, v15

    iput v14, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 196
    .restart local v14    # "index":I
    iget v15, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v14, v15, :cond_18

    const/16 v15, 0x1a

    goto :goto_a

    :cond_18
    iget-object v15, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 198
    invoke-virtual {v15, v14}, Ljava/lang/String;->charAt(I)C

    move-result v15

    :goto_a
    iput-char v15, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 199
    iput v10, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 200
    .end local v14    # "index":I
    goto :goto_b

    .line 201
    :cond_19
    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 204
    :goto_b
    const/4 v14, 0x0

    .line 205
    .local v14, "i":I
    :goto_c
    iget v15, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v11, 0x10

    if-ne v15, v11, :cond_1a

    .line 206
    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 207
    const/16 v11, 0x22

    goto :goto_c

    .line 210
    :cond_1a
    iget v15, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v15, v10, :cond_1d

    .line 211
    nop

    .line 244
    .end local v14    # "i":I
    iget-char v8, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v9, 0x2c

    if-ne v8, v9, :cond_1c

    .line 245
    iget v8, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    iput v8, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 246
    .local v8, "index":I
    iget v9, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v8, v9, :cond_1b

    const/16 v14, 0x1a

    goto :goto_d

    :cond_1b
    iget-object v9, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 248
    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v14

    :goto_d
    iput-char v14, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 249
    iput v11, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 250
    .end local v8    # "index":I
    goto :goto_e

    .line 251
    :cond_1c
    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 253
    :goto_e
    return-void

    .line 214
    .restart local v14    # "i":I
    :cond_1d
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v5, v1, v4, v15}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 215
    .local v15, "val":Ljava/lang/Object;
    invoke-interface {v3, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 217
    iget v10, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    const/4 v8, 0x1

    if-ne v10, v8, :cond_1e

    .line 218
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkListResolve(Ljava/util/Collection;)V

    .line 221
    :cond_1e
    iget v8, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v8, v11, :cond_24

    .line 222
    iget-char v7, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 223
    if-ne v7, v13, :cond_20

    .line 224
    iget v8, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v10, 0x1

    add-int/2addr v8, v10

    iput v8, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 225
    .restart local v8    # "index":I
    iget v10, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v8, v10, :cond_1f

    const/16 v10, 0x1a

    goto :goto_f

    :cond_1f
    iget-object v10, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 227
    invoke-virtual {v10, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    :goto_f
    iput-char v10, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 228
    iput v9, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 229
    .end local v8    # "index":I
    const/16 v8, 0x22

    const/4 v10, 0x1

    const/16 v11, 0xc

    goto :goto_11

    :cond_20
    if-ne v7, v12, :cond_22

    .line 230
    iget v8, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v10, 0x1

    add-int/2addr v8, v10

    iput v8, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 231
    .restart local v8    # "index":I
    iget v11, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v8, v11, :cond_21

    const/16 v11, 0x1a

    goto :goto_10

    :cond_21
    iget-object v11, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 233
    invoke-virtual {v11, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    :goto_10
    iput-char v11, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 234
    const/16 v11, 0xc

    iput v11, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 235
    .end local v8    # "index":I
    const/16 v8, 0x22

    goto :goto_11

    :cond_22
    const/4 v10, 0x1

    const/16 v11, 0xc

    const/16 v8, 0x22

    if-ne v7, v8, :cond_23

    .line 236
    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString()V

    goto :goto_11

    .line 238
    :cond_23
    invoke-virtual {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 240
    goto :goto_11

    .line 221
    :cond_24
    const/16 v8, 0x22

    const/4 v10, 0x1

    const/16 v11, 0xc

    .line 204
    .end local v15    # "val":Ljava/lang/Object;
    :goto_11
    add-int/lit8 v14, v14, 0x1

    const/16 v8, 0xc

    const/16 v10, 0xf

    const/16 v11, 0x22

    goto/16 :goto_c
.end method

.method public parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 7
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "objectType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 40
    .local p4, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 41
    .local v0, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    .line 42
    .local v1, "token":I
    const/16 v2, 0x8

    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 43
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_3

    .line 49
    :cond_0
    const/4 v2, 0x0

    .line 51
    .local v2, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    iget-boolean v3, p0, Lcom/alibaba/fastjson/parser/ListTypeFieldDeserializer;->array:Z

    if-eqz v3, :cond_1

    .line 52
    new-instance v3, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    move-object v2, v3

    .line 53
    .local v3, "list":Ljava/util/List;
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/ListTypeFieldDeserializer;->itemType:Ljava/lang/reflect/Type;

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/JSONArray;->setComponentType(Ljava/lang/reflect/Type;)V

    goto :goto_0

    .line 55
    .end local v3    # "list":Ljava/util/List;
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .restart local v3    # "list":Ljava/util/List;
    :goto_0
    iget-object v4, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 60
    .local v4, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/ListTypeFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v5, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v4, p2, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    .line 61
    invoke-virtual {p0, p1, p3, v3}, Lcom/alibaba/fastjson/parser/ListTypeFieldDeserializer;->parseArray(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/util/Collection;)V

    .line 62
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 65
    iget-boolean v5, p0, Lcom/alibaba/fastjson/parser/ListTypeFieldDeserializer;->array:Z

    if-eqz v5, :cond_2

    .line 66
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/ListTypeFieldDeserializer;->itemType:Ljava/lang/reflect/Type;

    check-cast v5, Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    .line 67
    .local v5, "arrayValue":[Ljava/lang/Object;
    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    .line 68
    .local v6, "fieldValue":Ljava/lang/Object;
    invoke-virtual {v2, v6}, Lcom/alibaba/fastjson/JSONArray;->setRelatedArray(Ljava/lang/Object;)V

    .line 69
    .end local v5    # "arrayValue":[Ljava/lang/Object;
    goto :goto_1

    .line 70
    .end local v6    # "fieldValue":Ljava/lang/Object;
    :cond_2
    move-object v6, v3

    .line 73
    .restart local v6    # "fieldValue":Ljava/lang/Object;
    :goto_1
    if-nez p2, :cond_3

    .line 74
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/ListTypeFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v5, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {p4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 76
    :cond_3
    invoke-virtual {p0, p2, v6}, Lcom/alibaba/fastjson/parser/ListTypeFieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    :goto_2
    return-void

    .line 44
    .end local v2    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v3    # "list":Ljava/util/List;
    .end local v4    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v6    # "fieldValue":Ljava/lang/Object;
    :cond_4
    :goto_3
    const/4 v2, 0x0

    invoke-virtual {p0, p2, v2}, Lcom/alibaba/fastjson/parser/ListTypeFieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    iget-object v2, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 46
    return-void
.end method

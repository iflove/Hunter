.class public Lcom/alibaba/fastjson/parser/ThrowableDeserializer;
.super Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;
.source "ThrowableDeserializer.java"


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;)V
    .locals 0
    .param p1, "mapping"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 17
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2, p2}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    .line 18
    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18
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

    .line 22
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    iget-object v4, v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 24
    .local v4, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    iget v0, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/4 v5, 0x0

    const/16 v6, 0x8

    if-ne v0, v6, :cond_0

    .line 25
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 26
    return-object v5

    .line 29
    :cond_0
    iget v0, v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    const-string/jumbo v7, "syntax error"

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-ne v0, v8, :cond_1

    .line 30
    iput v9, v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    goto :goto_0

    .line 32
    :cond_1
    iget v0, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v10, 0xc

    if-ne v0, v10, :cond_1c

    .line 37
    :goto_0
    const/4 v0, 0x0

    .line 38
    .local v0, "cause":Ljava/lang/Throwable;
    const/4 v10, 0x0

    .line 40
    .local v10, "exClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v3, :cond_2

    instance-of v11, v3, Ljava/lang/Class;

    if-eqz v11, :cond_2

    .line 41
    move-object v11, v3

    check-cast v11, Ljava/lang/Class;

    .line 42
    .local v11, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v12, Ljava/lang/Throwable;

    invoke-virtual {v12, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 43
    move-object v10, v11

    .line 47
    .end local v11    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    const/4 v11, 0x0

    .line 48
    .local v11, "message":Ljava/lang/String;
    const/4 v12, 0x0

    .line 49
    .local v12, "stackTrace":[Ljava/lang/StackTraceElement;
    const/4 v13, 0x0

    .line 53
    .local v13, "otherValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_1
    iget-object v14, v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-virtual {v4, v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v14

    .line 55
    .local v14, "key":Ljava/lang/String;
    const/16 v15, 0xd

    const/16 v8, 0x10

    if-nez v14, :cond_4

    .line 56
    iget v5, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v5, v15, :cond_3

    .line 57
    invoke-virtual {v4, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 58
    move-object v5, v0

    goto/16 :goto_4

    .line 60
    :cond_3
    iget v5, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v5, v8, :cond_4

    .line 61
    const/4 v5, 0x0

    const/4 v8, 0x2

    goto :goto_1

    .line 65
    :cond_4
    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    .line 67
    const-string v5, "@type"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v15, 0x4

    if-eqz v5, :cond_6

    .line 68
    iget v5, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v5, v15, :cond_5

    .line 69
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v5

    .line 70
    .local v5, "exClassName":Ljava/lang/String;
    iget-object v15, v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    iget-object v15, v15, Lcom/alibaba/fastjson/parser/ParserConfig;->defaultClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v5, v15, v9}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v5

    .line 71
    .end local v10    # "exClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v5, "exClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 74
    invoke-virtual {v4, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    move-object v10, v5

    const/4 v15, 0x0

    goto :goto_3

    .line 72
    .end local v5    # "exClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v10    # "exClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v5, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 75
    :cond_6
    const-string/jumbo v5, "message"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 76
    iget v5, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v5, v6, :cond_7

    .line 77
    const/4 v5, 0x0

    .end local v11    # "message":Ljava/lang/String;
    .local v5, "message":Ljava/lang/String;
    goto :goto_2

    .line 78
    .end local v5    # "message":Ljava/lang/String;
    .restart local v11    # "message":Ljava/lang/String;
    :cond_7
    iget v5, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v5, v15, :cond_8

    .line 79
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v5

    .line 83
    .end local v11    # "message":Ljava/lang/String;
    .restart local v5    # "message":Ljava/lang/String;
    :goto_2
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    move-object v11, v5

    const/4 v15, 0x0

    goto :goto_3

    .line 81
    .end local v5    # "message":Ljava/lang/String;
    .restart local v11    # "message":Ljava/lang/String;
    :cond_8
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v5, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 84
    :cond_9
    const-string v5, "cause"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 85
    const/4 v15, 0x0

    invoke-virtual {v1, v2, v15, v5}, Lcom/alibaba/fastjson/parser/ThrowableDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/Throwable;

    goto :goto_3

    .line 86
    :cond_a
    const/4 v15, 0x0

    const-string/jumbo v5, "stackTrace"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 87
    const-class v5, [Ljava/lang/StackTraceElement;

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/StackTraceElement;

    move-object v12, v5

    .end local v12    # "stackTrace":[Ljava/lang/StackTraceElement;
    .local v5, "stackTrace":[Ljava/lang/StackTraceElement;
    goto :goto_3

    .line 89
    .end local v5    # "stackTrace":[Ljava/lang/StackTraceElement;
    .restart local v12    # "stackTrace":[Ljava/lang/StackTraceElement;
    :cond_b
    if-nez v13, :cond_c

    .line 90
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v13, v5

    .line 92
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v13, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :goto_3
    iget v5, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v6, 0xd

    if-ne v5, v6, :cond_1b

    .line 96
    invoke-virtual {v4, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 97
    move-object v5, v0

    .line 101
    .end local v0    # "cause":Ljava/lang/Throwable;
    .end local v14    # "key":Ljava/lang/String;
    .local v5, "cause":Ljava/lang/Throwable;
    :goto_4
    const/4 v6, 0x0

    .line 102
    .local v6, "ex":Ljava/lang/Throwable;
    if-nez v10, :cond_d

    .line 103
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v11, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v17, v4

    .end local v6    # "ex":Ljava/lang/Throwable;
    .local v0, "ex":Ljava/lang/Throwable;
    goto/16 :goto_9

    .line 106
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v6    # "ex":Ljava/lang/Throwable;
    :cond_d
    const/4 v0, 0x0

    .line 107
    .local v0, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v7, 0x0

    .line 108
    .local v7, "messageConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v8, 0x0

    .line 109
    .local v8, "causeConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :try_start_0
    invoke-virtual {v10}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v14

    array-length v15, v14

    :goto_5
    if-ge v9, v15, :cond_11

    aget-object v16, v14, v9

    .line 110
    .local v16, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_e

    .line 111
    move-object/from16 v0, v16

    .line 112
    move-object/from16 v17, v4

    goto :goto_6

    .line 115
    :cond_e
    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v3, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v17, v4

    const/4 v4, 0x1

    .end local v4    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .local v17, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    if-ne v3, v4, :cond_f

    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const-class v4, Ljava/lang/String;

    if-ne v3, v4, :cond_f

    .line 116
    move-object/from16 v3, v16

    .line 117
    .end local v7    # "messageConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v3, "messageConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    move-object v7, v3

    goto :goto_6

    .line 120
    .end local v3    # "messageConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v7    # "messageConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_f
    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_10

    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const-class v4, Ljava/lang/String;

    if-ne v3, v4, :cond_10

    .line 121
    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const-class v4, Ljava/lang/Throwable;

    if-ne v3, v4, :cond_10

    .line 122
    move-object/from16 v3, v16

    .line 123
    .end local v8    # "causeConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v3, "causeConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    move-object v8, v3

    .line 109
    .end local v3    # "causeConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v16    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v8    # "causeConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_10
    :goto_6
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v3, p2

    move-object/from16 v4, v17

    goto :goto_5

    .line 127
    .end local v17    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v4    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    :cond_11
    move-object/from16 v17, v4

    .end local v4    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v17    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    if-eqz v8, :cond_12

    .line 128
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v11, v3, v4

    const/4 v4, 0x1

    aput-object v5, v3, v4

    invoke-virtual {v8, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    move-object v6, v3

    .end local v6    # "ex":Ljava/lang/Throwable;
    .local v3, "ex":Ljava/lang/Throwable;
    goto :goto_7

    .line 138
    .end local v0    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "ex":Ljava/lang/Throwable;
    .end local v7    # "messageConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v8    # "causeConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v6    # "ex":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    goto/16 :goto_c

    .line 129
    .restart local v0    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v7    # "messageConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v8    # "causeConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_12
    if-eqz v7, :cond_13

    .line 130
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v11, v3, v4

    invoke-virtual {v7, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    move-object v6, v3

    .end local v6    # "ex":Ljava/lang/Throwable;
    .restart local v3    # "ex":Ljava/lang/Throwable;
    goto :goto_7

    .line 131
    .end local v3    # "ex":Ljava/lang/Throwable;
    .restart local v6    # "ex":Ljava/lang/Throwable;
    :cond_13
    if-eqz v0, :cond_14

    .line 132
    const/4 v4, 0x0

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    move-object v6, v3

    .line 135
    :cond_14
    :goto_7
    if-nez v6, :cond_15

    .line 136
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v11, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v3

    .end local v6    # "ex":Ljava/lang/Throwable;
    .restart local v3    # "ex":Ljava/lang/Throwable;
    goto :goto_8

    .line 135
    .end local v3    # "ex":Ljava/lang/Throwable;
    .restart local v6    # "ex":Ljava/lang/Throwable;
    :cond_15
    move-object v0, v6

    .line 140
    .end local v6    # "ex":Ljava/lang/Throwable;
    .end local v7    # "messageConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v8    # "causeConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v0, "ex":Ljava/lang/Throwable;
    :goto_8
    nop

    .line 143
    :goto_9
    if-eqz v12, :cond_16

    .line 144
    invoke-virtual {v0, v12}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 147
    :cond_16
    if-eqz v13, :cond_1a

    .line 148
    const/4 v3, 0x0

    .line 150
    .local v3, "exBeanDeser":Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;
    if-eqz v10, :cond_18

    .line 151
    iget-object v4, v1, Lcom/alibaba/fastjson/parser/ThrowableDeserializer;->clazz:Ljava/lang/Class;

    if-ne v10, v4, :cond_17

    .line 152
    move-object/from16 v3, p0

    goto :goto_a

    .line 154
    :cond_17
    iget-object v4, v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v4, v10}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v4

    .line 155
    .local v4, "exDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    instance-of v6, v4, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    if-eqz v6, :cond_18

    .line 156
    move-object v3, v4

    check-cast v3, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    .line 161
    .end local v4    # "exDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_18
    :goto_a
    if-eqz v3, :cond_1a

    .line 162
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 163
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 164
    .local v7, "key":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 166
    .local v8, "value":Ljava/lang/Object;
    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v9

    .line 167
    .local v9, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-eqz v9, :cond_19

    .line 168
    invoke-virtual {v9, v0, v8}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 170
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/Object;
    .end local v9    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_19
    goto :goto_b

    .line 174
    .end local v3    # "exBeanDeser":Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;
    :cond_1a
    return-object v0

    .line 138
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v17    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .local v4, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .local v6, "ex":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    move-object/from16 v17, v4

    .line 139
    .end local v4    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    :goto_c
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string v4, "create instance error"

    invoke-direct {v3, v4, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 95
    .end local v5    # "cause":Ljava/lang/Throwable;
    .end local v6    # "ex":Ljava/lang/Throwable;
    .end local v17    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .local v0, "cause":Ljava/lang/Throwable;
    .restart local v4    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v14    # "key":Ljava/lang/String;
    :cond_1b
    move-object/from16 v17, v4

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 99
    .end local v4    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v14    # "key":Ljava/lang/String;
    .restart local v17    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    move-object/from16 v3, p2

    move-object v5, v15

    move-object/from16 v4, v17

    const/16 v6, 0x8

    const/4 v8, 0x2

    const/4 v9, 0x0

    goto/16 :goto_1

    .line 33
    .end local v0    # "cause":Ljava/lang/Throwable;
    .end local v10    # "exClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v11    # "message":Ljava/lang/String;
    .end local v12    # "stackTrace":[Ljava/lang/StackTraceElement;
    .end local v13    # "otherValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v17    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v4    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    :cond_1c
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.class public final Lcom/alibaba/fastjson/serializer/MiscCodec;
.super Ljava/lang/Object;
.source "MiscCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/MiscCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/MiscCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "clazz"    # Ljava/lang/reflect/Type;
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

    .line 142
    const-class v0, Ljava/lang/StackTraceElement;

    if-ne p2, v0, :cond_0

    .line 143
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/MiscCodec;->parseStackTraceElement(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 146
    :cond_0
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 150
    .local v0, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    iget v1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    .line 151
    iput v3, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    .line 152
    const/16 v1, 0x10

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 154
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/4 v4, 0x4

    const-string/jumbo v5, "syntax error"

    if-ne v1, v4, :cond_2

    .line 155
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "val"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 163
    const/16 v1, 0x11

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 165
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v1

    .line 167
    .local v1, "objVal":Ljava/lang/Object;
    const/16 v4, 0xd

    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    goto :goto_0

    .line 156
    .end local v1    # "objVal":Ljava/lang/Object;
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v1, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 160
    :cond_2
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v1, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 169
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v1

    .line 172
    .restart local v1    # "objVal":Ljava/lang/Object;
    :goto_0
    const/4 v4, 0x0

    if-nez v1, :cond_4

    .line 173
    return-object v4

    .line 177
    :cond_4
    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_14

    .line 178
    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    .line 202
    .local v5, "strVal":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_5

    .line 203
    return-object v4

    .line 206
    :cond_5
    const-class v6, Ljava/util/UUID;

    if-ne p2, v6, :cond_6

    .line 207
    invoke-static {v5}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    return-object v2

    .line 208
    :cond_6
    const-class v6, Ljava/lang/Class;

    if-ne p2, v6, :cond_7

    .line 209
    iget-object v2, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    iget-object v2, v2, Lcom/alibaba/fastjson/parser/ParserConfig;->defaultClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v5, v2, v3}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v2

    return-object v2

    .line 210
    :cond_7
    const-class v6, Ljava/util/Locale;

    const/4 v7, 0x1

    if-ne p2, v6, :cond_a

    .line 211
    const-string v4, "_"

    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 213
    .local v4, "items":[Ljava/lang/String;
    array-length v6, v4

    if-ne v6, v7, :cond_8

    .line 214
    new-instance v2, Ljava/util/Locale;

    aget-object v3, v4, v3

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 217
    :cond_8
    array-length v6, v4

    if-ne v6, v2, :cond_9

    .line 218
    new-instance v2, Ljava/util/Locale;

    aget-object v3, v4, v3

    aget-object v6, v4, v7

    invoke-direct {v2, v3, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 221
    :cond_9
    new-instance v6, Ljava/util/Locale;

    aget-object v3, v4, v3

    aget-object v7, v4, v7

    aget-object v2, v4, v2

    invoke-direct {v6, v3, v7, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    .line 222
    .end local v4    # "items":[Ljava/lang/String;
    :cond_a
    const-class v2, Ljava/net/URI;

    if-ne p2, v2, :cond_b

    .line 223
    invoke-static {v5}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    return-object v2

    .line 224
    :cond_b
    const-class v2, Ljava/net/URL;

    if-ne p2, v2, :cond_c

    .line 226
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 227
    :catch_0
    move-exception v2

    .line 228
    .local v2, "e":Ljava/net/MalformedURLException;
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string v4, "create url error"

    invoke-direct {v3, v4, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 230
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :cond_c
    const-class v2, Ljava/util/regex/Pattern;

    if-ne p2, v2, :cond_d

    .line 231
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    return-object v2

    .line 232
    :cond_d
    const-class v2, Ljava/nio/charset/Charset;

    if-ne p2, v2, :cond_e

    .line 233
    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    return-object v2

    .line 234
    :cond_e
    const-class v2, Ljava/util/Currency;

    if-ne p2, v2, :cond_f

    .line 235
    invoke-static {v5}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v2

    return-object v2

    .line 236
    :cond_f
    const-class v2, Ljava/text/SimpleDateFormat;

    if-ne p2, v2, :cond_10

    .line 237
    new-instance v2, Ljava/text/SimpleDateFormat;

    iget-object v3, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->locale:Ljava/util/Locale;

    invoke-direct {v2, v5, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 238
    .local v2, "dateFormat":Ljava/text/SimpleDateFormat;
    iget-object v3, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 239
    return-object v2

    .line 240
    .end local v2    # "dateFormat":Ljava/text/SimpleDateFormat;
    :cond_10
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p2, v2, :cond_13

    const-class v2, Ljava/lang/Character;

    if-ne p2, v2, :cond_11

    goto :goto_1

    .line 243
    :cond_11
    instance-of v2, p2, Ljava/lang/Class;

    if-eqz v2, :cond_12

    .line 244
    move-object v2, p2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 245
    .local v2, "className":Ljava/lang/String;
    const-string v6, "android.net.Uri"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 247
    :try_start_1
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 248
    .local v6, "uriClass":Ljava/lang/Class;
    const-string/jumbo v8, "parse"

    new-array v9, v7, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v3

    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 249
    .local v8, "method":Ljava/lang/reflect/Method;
    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v3

    invoke-virtual {v8, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 250
    .local v3, "uri":Ljava/lang/Object;
    return-object v3

    .line 251
    .end local v3    # "uri":Ljava/lang/Object;
    .end local v6    # "uriClass":Ljava/lang/Class;
    .end local v8    # "method":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v3

    .line 252
    .local v3, "ex":Ljava/lang/Exception;
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v6, "parse android.net.Uri error."

    invoke-direct {v4, v6, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 257
    .end local v2    # "className":Ljava/lang/String;
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_12
    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    return-object v2

    .line 241
    :cond_13
    :goto_1
    invoke-static {v5}, Lcom/alibaba/fastjson/util/TypeUtils;->castToChar(Ljava/lang/Object;)Ljava/lang/Character;

    move-result-object v2

    return-object v2

    .line 180
    .end local v5    # "strVal":Ljava/lang/String;
    :cond_14
    instance-of v2, v1, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v2, :cond_17

    .line 181
    move-object v2, v1

    check-cast v2, Lcom/alibaba/fastjson/JSONObject;

    .line 183
    .local v2, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-class v3, Ljava/util/Currency;

    if-ne p2, v3, :cond_16

    .line 184
    const-string v3, "currency"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 185
    .local v3, "currency":Ljava/lang/String;
    if-eqz v3, :cond_15

    .line 186
    invoke-static {v3}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v4

    return-object v4

    .line 189
    :cond_15
    const-string v4, "currencyCode"

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 190
    .local v4, "symbol":Ljava/lang/String;
    if-eqz v4, :cond_16

    .line 191
    invoke-static {v4}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v5

    return-object v5

    .line 195
    .end local v3    # "currency":Ljava/lang/String;
    .end local v4    # "symbol":Ljava/lang/String;
    :cond_16
    const-class v3, Ljava/util/Map$Entry;

    if-ne p2, v3, :cond_17

    .line 196
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 199
    .end local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_17
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "except string value"

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected parseStackTraceElement(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/lang/Object;
    .locals 13
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            ")TT;"
        }
    .end annotation

    .line 263
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 265
    .local v0, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 266
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 267
    const/4 v1, 0x0

    return-object v1

    .line 270
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v3, 0xc

    const/16 v4, 0x10

    if-eq v1, v3, :cond_2

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    if-ne v1, v4, :cond_1

    goto :goto_0

    .line 271
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "syntax error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 274
    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 275
    .local v1, "declaringClass":Ljava/lang/String;
    const/4 v3, 0x0

    .line 276
    .local v3, "methodName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 277
    .local v5, "fileName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 281
    .local v6, "lineNumber":I
    :goto_1
    iget-object v7, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v7

    .line 283
    .local v7, "key":Ljava/lang/String;
    const/16 v8, 0xd

    if-nez v7, :cond_4

    .line 284
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    if-ne v9, v8, :cond_3

    .line 285
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 286
    goto/16 :goto_3

    .line 288
    :cond_3
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    if-ne v9, v4, :cond_4

    .line 289
    goto :goto_1

    .line 293
    :cond_4
    const/16 v9, 0x3a

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    .line 294
    const-string v9, "className"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x4

    const-string/jumbo v11, "syntax error"

    if-eqz v9, :cond_7

    .line 295
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    if-ne v9, v2, :cond_5

    .line 296
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 297
    :cond_5
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    if-ne v9, v10, :cond_6

    .line 298
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 300
    :cond_6
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v2, v11}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 302
    :cond_7
    const-string/jumbo v9, "methodName"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 303
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    if-ne v9, v2, :cond_8

    .line 304
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 305
    :cond_8
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    if-ne v9, v10, :cond_9

    .line 306
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 308
    :cond_9
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v2, v11}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 310
    :cond_a
    const-string v9, "fileName"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 311
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    if-ne v9, v2, :cond_b

    .line 312
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 313
    :cond_b
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    if-ne v9, v10, :cond_c

    .line 314
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 316
    :cond_c
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v2, v11}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 318
    :cond_d
    const-string v9, "lineNumber"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 319
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    if-ne v9, v2, :cond_e

    .line 320
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 321
    :cond_e
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_f

    .line 322
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v6

    goto :goto_2

    .line 324
    :cond_f
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v2, v11}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 326
    :cond_10
    const-string/jumbo v9, "nativeMethod"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 327
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    if-ne v9, v2, :cond_11

    .line 328
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_2

    .line 329
    :cond_11
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    const/4 v10, 0x6

    if-ne v9, v10, :cond_12

    .line 330
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_2

    .line 331
    :cond_12
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    const/4 v10, 0x7

    if-ne v9, v10, :cond_13

    .line 332
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_2

    .line 334
    :cond_13
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v2, v11}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 336
    :cond_14
    const-string/jumbo v9, "syntax error : "

    const-string v12, "@type"

    if-ne v7, v12, :cond_19

    .line 337
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v12

    if-ne v12, v10, :cond_16

    .line 338
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v10

    .line 339
    .local v10, "elementType":Ljava/lang/String;
    const-string v11, "java.lang.StackTraceElement"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 342
    .end local v10    # "elementType":Ljava/lang/String;
    goto :goto_2

    .line 340
    .restart local v10    # "elementType":Ljava/lang/String;
    :cond_15
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 343
    .end local v10    # "elementType":Ljava/lang/String;
    :cond_16
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    if-ne v9, v2, :cond_18

    .line 351
    :goto_2
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    if-ne v9, v8, :cond_17

    .line 352
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 353
    nop

    .line 356
    .end local v7    # "key":Ljava/lang/String;
    :goto_3
    new-instance v2, Ljava/lang/StackTraceElement;

    invoke-direct {v2, v1, v3, v5, v6}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v2

    .line 355
    :cond_17
    goto/16 :goto_1

    .line 344
    .restart local v7    # "key":Ljava/lang/String;
    :cond_18
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v2, v11}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 348
    :cond_19
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 10
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 35
    .local v0, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    if-nez p2, :cond_3

    .line 36
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p4, v1, :cond_2

    const-class v1, Ljava/lang/Character;

    if-ne p4, v1, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    iget v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v2, v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 40
    invoke-static {p4}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 41
    .local v1, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/util/Enumeration;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 42
    const-string v2, "[]"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 43
    return-void

    .line 46
    .end local v1    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_1

    .line 37
    :cond_2
    :goto_0
    const-string v1, ""

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    .line 48
    :goto_1
    return-void

    .line 51
    :cond_3
    instance-of v1, p2, Ljava/util/regex/Pattern;

    if-eqz v1, :cond_4

    .line 52
    move-object v1, p2

    check-cast v1, Ljava/util/regex/Pattern;

    .line 53
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    .line 54
    .end local v1    # "p":Ljava/util/regex/Pattern;
    goto/16 :goto_5

    :cond_4
    instance-of v1, p2, Ljava/util/TimeZone;

    if-eqz v1, :cond_5

    .line 55
    move-object v1, p2

    check-cast v1, Ljava/util/TimeZone;

    .line 56
    .local v1, "timeZone":Ljava/util/TimeZone;
    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    .line 57
    .end local v1    # "timeZone":Ljava/util/TimeZone;
    goto/16 :goto_5

    :cond_5
    instance-of v1, p2, Ljava/util/Currency;

    if-eqz v1, :cond_6

    .line 58
    move-object v1, p2

    check-cast v1, Ljava/util/Currency;

    .line 59
    .local v1, "currency":Ljava/util/Currency;
    invoke-virtual {v1}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    .line 60
    .end local v1    # "currency":Ljava/util/Currency;
    goto/16 :goto_5

    :cond_6
    instance-of v1, p2, Ljava/lang/Class;

    if-eqz v1, :cond_7

    .line 61
    move-object v1, p2

    check-cast v1, Ljava/lang/Class;

    .line 62
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    .line 63
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto/16 :goto_5

    :cond_7
    instance-of v1, p2, Ljava/lang/Character;

    if-eqz v1, :cond_9

    .line 64
    move-object v1, p2

    check-cast v1, Ljava/lang/Character;

    .line 66
    .local v1, "value":Ljava/lang/Character;
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v2

    .line 67
    .local v2, "c":C
    if-nez v2, :cond_8

    .line 68
    const-string v3, "\u0000"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 70
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    .line 72
    .end local v1    # "value":Ljava/lang/Character;
    .end local v2    # "c":C
    :goto_2
    goto/16 :goto_5

    :cond_9
    instance-of v1, p2, Ljava/text/SimpleDateFormat;

    const/16 v2, 0x2c

    const/4 v3, 0x0

    if-eqz v1, :cond_b

    .line 73
    move-object v1, p2

    check-cast v1, Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "pattern":Ljava/lang/String;
    iget v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v5, v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_a

    .line 76
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v4, p4, :cond_a

    .line 77
    const/16 v4, 0x7b

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 78
    const-string v4, "@type"

    invoke-virtual {v0, v4, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    .line 79
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 81
    const-string/jumbo v2, "val"

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    .line 82
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 83
    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 84
    return-void

    .line 88
    :cond_a
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 89
    .end local v1    # "pattern":Ljava/lang/String;
    goto/16 :goto_5

    :cond_b
    instance-of v1, p2, Lcom/alibaba/fastjson/JSONStreamAware;

    if-eqz v1, :cond_c

    .line 90
    move-object v1, p2

    check-cast v1, Lcom/alibaba/fastjson/JSONStreamAware;

    .line 91
    .local v1, "aware":Lcom/alibaba/fastjson/JSONStreamAware;
    iget-object v2, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-interface {v1, v2}, Lcom/alibaba/fastjson/JSONStreamAware;->writeJSONString(Ljava/lang/Appendable;)V

    .line 92
    .end local v1    # "aware":Lcom/alibaba/fastjson/JSONStreamAware;
    goto/16 :goto_5

    :cond_c
    instance-of v1, p2, Lcom/alibaba/fastjson/JSONAware;

    if-eqz v1, :cond_d

    .line 93
    move-object v1, p2

    check-cast v1, Lcom/alibaba/fastjson/JSONAware;

    .line 94
    .local v1, "aware":Lcom/alibaba/fastjson/JSONAware;
    invoke-interface {v1}, Lcom/alibaba/fastjson/JSONAware;->toJSONString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 95
    .end local v1    # "aware":Lcom/alibaba/fastjson/JSONAware;
    goto/16 :goto_5

    :cond_d
    instance-of v1, p2, Lcom/alibaba/fastjson/serializer/JSONSerializable;

    if-eqz v1, :cond_e

    .line 96
    move-object v1, p2

    check-cast v1, Lcom/alibaba/fastjson/serializer/JSONSerializable;

    .line 97
    .local v1, "jsonSerializable":Lcom/alibaba/fastjson/serializer/JSONSerializable;
    invoke-interface {v1, p1, p3, p4}, Lcom/alibaba/fastjson/serializer/JSONSerializable;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    .line 98
    .end local v1    # "jsonSerializable":Lcom/alibaba/fastjson/serializer/JSONSerializable;
    goto :goto_5

    :cond_e
    instance-of v1, p2, Ljava/util/Enumeration;

    if-eqz v1, :cond_13

    .line 99
    const/4 v1, 0x0

    .line 100
    .local v1, "elementType":Ljava/lang/reflect/Type;
    iget v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v5, v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_f

    .line 101
    instance-of v4, p4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_f

    .line 102
    move-object v4, p4

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    .line 103
    .local v4, "param":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    aget-object v1, v5, v3

    .line 107
    .end local v4    # "param":Ljava/lang/reflect/ParameterizedType;
    :cond_f
    move-object v4, p2

    check-cast v4, Ljava/util/Enumeration;

    .line 109
    .local v4, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    iget-object v5, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 110
    .local v5, "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    invoke-virtual {p1, v5, p2, p3, v3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 113
    const/4 v3, 0x0

    .line 114
    .local v3, "i":I
    const/16 v6, 0x5b

    :try_start_0
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 115
    :goto_3
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 116
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    .line 117
    .local v6, "item":Ljava/lang/Object;
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "i":I
    .local v7, "i":I
    if-eqz v3, :cond_10

    .line 118
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 121
    :cond_10
    if-nez v6, :cond_11

    .line 122
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 123
    goto :goto_4

    .line 126
    :cond_11
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 128
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v8, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-virtual {v8, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->get(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v8

    .line 129
    .local v8, "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    add-int/lit8 v9, v7, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, p1, v6, v9, v1}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    .line 130
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "item":Ljava/lang/Object;
    .end local v8    # "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    nop

    .line 115
    :goto_4
    move v3, v7

    goto :goto_3

    .line 131
    .end local v7    # "i":I
    .local v3, "i":I
    :cond_12
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    .end local v3    # "i":I
    iput-object v5, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 134
    nop

    .line 135
    .end local v1    # "elementType":Ljava/lang/reflect/Type;
    .end local v4    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v5    # "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    goto :goto_5

    .line 133
    .restart local v1    # "elementType":Ljava/lang/reflect/Type;
    .restart local v4    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .restart local v5    # "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    :catchall_0
    move-exception v2

    iput-object v5, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 134
    throw v2

    .line 136
    .end local v1    # "elementType":Ljava/lang/reflect/Type;
    .end local v4    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v5    # "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    :cond_13
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    .line 138
    :goto_5
    return-void
.end method

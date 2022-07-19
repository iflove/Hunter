.class public final Lcom/alibaba/fastjson/serializer/DateCodec;
.super Ljava/lang/Object;
.source "DateCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/DateCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcom/alibaba/fastjson/serializer/DateCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/DateCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/DateCodec;->instance:Lcom/alibaba/fastjson/serializer/DateCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method


# virtual methods
.method protected cast(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "clazz"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "val"    # Ljava/lang/Object;
    .param p5, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 267
    const/4 v0, 0x0

    if-nez p4, :cond_0

    .line 268
    return-object v0

    .line 271
    :cond_0
    instance-of v1, p4, Ljava/util/Date;

    if-eqz v1, :cond_1

    .line 272
    return-object p4

    .line 273
    :cond_1
    instance-of v1, p4, Ljava/lang/Number;

    if-eqz v1, :cond_2

    .line 274
    new-instance v0, Ljava/util/Date;

    move-object v1, p4

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0

    .line 275
    :cond_2
    instance-of v1, p4, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 276
    move-object v1, p4

    check-cast v1, Ljava/lang/String;

    .line 277
    .local v1, "strVal":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 278
    return-object v0

    .line 281
    :cond_3
    new-instance v2, Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>(Ljava/lang/String;)V

    .line 283
    .local v2, "dateLexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanISO8601DateIfMatch(Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 284
    iget-object v0, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    .line 286
    .local v0, "calendar":Ljava/util/Calendar;
    const-class v3, Ljava/util/Calendar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p2, v3, :cond_4

    .line 287
    nop

    .line 293
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    .line 287
    return-object v0

    .line 290
    :cond_4
    :try_start_1
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 293
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    .line 290
    return-object v3

    .line 293
    .end local v0    # "calendar":Ljava/util/Calendar;
    :cond_5
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    .line 294
    nop

    .line 296
    const-string v3, "0000-00-00"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 297
    const-string v3, "0000-00-00T00:00:00"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 298
    const-string v3, "0001-01-01T00:00:00+08:00"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_1

    .line 304
    :cond_6
    if-eqz p5, :cond_7

    .line 305
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v0, "dateFormat":Ljava/text/DateFormat;
    goto :goto_0

    .line 307
    .end local v0    # "dateFormat":Ljava/text/DateFormat;
    :cond_7
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    .line 310
    .restart local v0    # "dateFormat":Ljava/text/DateFormat;
    :goto_0
    :try_start_2
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v3

    .line 311
    :catch_0
    move-exception v3

    .line 315
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 316
    .local v3, "longVal":J
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v3, v4}, Ljava/util/Date;-><init>(J)V

    return-object v5

    .line 299
    .end local v0    # "dateFormat":Ljava/text/DateFormat;
    .end local v3    # "longVal":J
    :cond_8
    :goto_1
    return-object v0

    .line 293
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    .line 294
    throw v0

    .line 319
    .end local v1    # "strVal":Ljava/lang/String;
    .end local v2    # "dateLexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    :cond_9
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "parse error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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

    .line 153
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson/serializer/DateCodec;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 11
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "clazz"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 158
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 161
    .local v0, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    .line 162
    .local v1, "token":I
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x10

    if-ne v1, v3, :cond_0

    .line 163
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 164
    .local v3, "val":Ljava/lang/Object;
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_1

    .line 165
    .end local v3    # "val":Ljava/lang/Object;
    :cond_0
    const/4 v5, 0x4

    if-ne v1, v5, :cond_4

    .line 166
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, "strVal":Ljava/lang/String;
    move-object v5, v3

    .line 168
    .local v5, "val":Ljava/lang/Object;
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 170
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v6, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    iget v6, v6, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v4, v6

    if-eqz v4, :cond_3

    .line 171
    new-instance v4, Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-direct {v4, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>(Ljava/lang/String;)V

    .line 172
    .local v4, "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanISO8601DateIfMatch(Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 173
    iget-object v6, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    .line 174
    .local v6, "calendar":Ljava/util/Calendar;
    const-class v7, Ljava/util/Calendar;

    if-ne p2, v7, :cond_1

    .line 175
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    .line 176
    return-object v6

    .line 178
    :cond_1
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    .line 180
    .end local v6    # "calendar":Ljava/util/Calendar;
    :cond_2
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    move-object v3, v5

    goto :goto_0

    .line 170
    .end local v4    # "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    :cond_3
    move-object v3, v5

    .line 182
    .end local v5    # "val":Ljava/lang/Object;
    .local v3, "val":Ljava/lang/Object;
    :goto_0
    goto/16 :goto_1

    .end local v3    # "val":Ljava/lang/Object;
    :cond_4
    const/16 v6, 0x8

    if-ne v1, v6, :cond_5

    .line 183
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 184
    const/4 v3, 0x0

    .restart local v3    # "val":Ljava/lang/Object;
    goto/16 :goto_1

    .line 185
    .end local v3    # "val":Ljava/lang/Object;
    :cond_5
    const/16 v6, 0xc

    const/16 v7, 0xd

    const/16 v8, 0x11

    const-string/jumbo v9, "syntax error"

    if-ne v1, v6, :cond_a

    .line 186
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 189
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v6

    if-ne v6, v5, :cond_9

    .line 190
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v6

    .line 192
    .local v6, "key":Ljava/lang/String;
    const-string v9, "@type"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 193
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 194
    invoke-virtual {p1, v8}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 196
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v8

    .line 197
    .local v8, "typeName":Ljava/lang/String;
    iget-object v9, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    invoke-virtual {v9, v8, v2, v10}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v9

    .line 198
    .local v9, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v9, :cond_6

    .line 199
    move-object p2, v9

    .line 202
    :cond_6
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 203
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 206
    .end local v8    # "typeName":Ljava/lang/String;
    .end local v9    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_7
    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    .line 212
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    .line 213
    if-ne v1, v3, :cond_8

    .line 214
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->longValue()J

    move-result-wide v3

    .line 215
    .local v3, "timeMillis":J
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 220
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 222
    .restart local v5    # "val":Ljava/lang/Object;
    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 223
    .end local v3    # "timeMillis":J
    .end local v6    # "key":Ljava/lang/String;
    move-object v3, v5

    goto :goto_1

    .line 217
    .end local v5    # "val":Ljava/lang/Object;
    .restart local v6    # "key":Ljava/lang/String;
    :cond_8
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "syntax error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 208
    .end local v6    # "key":Ljava/lang/String;
    :cond_9
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v2, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 223
    :cond_a
    iget v6, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    if-ne v6, v3, :cond_d

    .line 224
    const/4 v3, 0x0

    iput v3, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    .line 225
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 227
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    if-ne v3, v5, :cond_c

    .line 228
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "val"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 231
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 236
    invoke-virtual {p1, v8}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 238
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v3

    .line 240
    .local v3, "val":Ljava/lang/Object;
    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    goto :goto_1

    .line 229
    .end local v3    # "val":Ljava/lang/Object;
    :cond_b
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v2, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 233
    :cond_c
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v2, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 242
    :cond_d
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v3

    .line 245
    .restart local v3    # "val":Ljava/lang/Object;
    :goto_1
    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, v3

    move-object v9, p4

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/fastjson/serializer/DateCodec;->cast(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 246
    .local v4, "obj":Ljava/lang/Object;
    const-class v5, Ljava/util/Calendar;

    if-ne p2, v5, :cond_10

    .line 247
    instance-of v5, v4, Ljava/util/Calendar;

    if-eqz v5, :cond_e

    .line 248
    return-object v4

    .line 251
    :cond_e
    move-object v5, v4

    check-cast v5, Ljava/util/Date;

    .line 252
    .local v5, "date":Ljava/util/Date;
    if-nez v5, :cond_f

    .line 253
    return-object v2

    .line 256
    :cond_f
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->timeZone:Ljava/util/TimeZone;

    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->locale:Ljava/util/Locale;

    invoke-static {v2, v6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 257
    .local v2, "calendar":Ljava/util/Calendar;
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 259
    return-object v2

    .line 261
    .end local v2    # "calendar":Ljava/util/Calendar;
    .end local v5    # "date":Ljava/util/Date;
    :cond_10
    return-object v4
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
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

    .line 47
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 49
    .local v2, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    if-nez v1, :cond_0

    .line 50
    invoke-virtual {v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 51
    return-void

    .line 54
    :cond_0
    iget v3, v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    .line 55
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object/from16 v4, p4

    if-eq v3, v4, :cond_3

    .line 56
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v5, Ljava/util/Date;

    if-ne v3, v5, :cond_1

    .line 57
    const-string/jumbo v3, "new Date("

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 58
    move-object v3, v1

    check-cast v3, Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 59
    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_0

    .line 61
    :cond_1
    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 62
    const-string v3, "@type"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    .line 63
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    .line 64
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 65
    const-string/jumbo v3, "val"

    invoke-virtual {v2, v3, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    .line 66
    move-object v3, v1

    check-cast v3, Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 67
    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 69
    :goto_0
    return-void

    .line 54
    :cond_2
    move-object/from16 v4, p4

    .line 74
    :cond_3
    instance-of v3, v1, Ljava/util/Calendar;

    if-eqz v3, :cond_4

    .line 75
    move-object v3, v1

    check-cast v3, Ljava/util/Calendar;

    .line 76
    .local v3, "calendar":Ljava/util/Calendar;
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 77
    .local v3, "date":Ljava/util/Date;
    goto :goto_1

    .line 78
    .end local v3    # "date":Ljava/util/Date;
    :cond_4
    move-object v3, v1

    check-cast v3, Ljava/util/Date;

    .line 81
    .restart local v3    # "date":Ljava/util/Date;
    :goto_1
    iget v5, v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v6, v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_6

    .line 82
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v5

    .line 83
    .local v5, "format":Ljava/text/DateFormat;
    if-nez v5, :cond_5

    .line 84
    new-instance v6, Ljava/text/SimpleDateFormat;

    sget-object v7, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->locale:Ljava/util/Locale;

    invoke-direct {v6, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object v5, v6

    .line 85
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 87
    :cond_5
    invoke-virtual {v5, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 88
    .local v6, "text":Ljava/lang/String;
    invoke-virtual {v2, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 89
    return-void

    .line 92
    .end local v5    # "format":Ljava/text/DateFormat;
    .end local v6    # "text":Ljava/lang/String;
    :cond_6
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    .line 94
    .local v5, "time":J
    iget v7, v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseISO8601DateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v8, v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v7, v8

    if-eqz v7, :cond_b

    .line 95
    iget v7, v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v8, v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v7, v8

    const/16 v8, 0x27

    const/16 v9, 0x22

    if-eqz v7, :cond_7

    .line 96
    invoke-virtual {v2, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_2

    .line 98
    :cond_7
    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 101
    :goto_2
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->timeZone:Ljava/util/TimeZone;

    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->locale:Ljava/util/Locale;

    invoke-static {v7, v10}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v7

    .line 102
    .local v7, "calendar":Ljava/util/Calendar;
    invoke-virtual {v7, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 104
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 105
    .local v11, "year":I
    const/4 v12, 0x2

    invoke-virtual {v7, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    add-int/2addr v12, v10

    .line 106
    .local v12, "month":I
    const/4 v10, 0x5

    invoke-virtual {v7, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 107
    .local v10, "day":I
    const/16 v13, 0xb

    invoke-virtual {v7, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 108
    .local v13, "hour":I
    const/16 v14, 0xc

    invoke-virtual {v7, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 109
    .local v14, "minute":I
    const/16 v15, 0xd

    invoke-virtual {v7, v15}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 110
    .local v9, "second":I
    const/16 v8, 0xe

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 113
    .local v8, "millis":I
    if-eqz v8, :cond_8

    .line 114
    const-string v16, "0000-00-00T00:00:00.000"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toCharArray()[C

    move-result-object v15

    .line 115
    .local v15, "buf":[C
    int-to-long v0, v8

    move-object/from16 v16, v3

    .end local v3    # "date":Ljava/util/Date;
    .local v16, "date":Ljava/util/Date;
    const/16 v3, 0x17

    invoke-static {v0, v1, v3, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    .line 116
    int-to-long v0, v9

    const/16 v3, 0x13

    invoke-static {v0, v1, v3, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    .line 117
    int-to-long v0, v14

    const/16 v3, 0x10

    invoke-static {v0, v1, v3, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    .line 118
    int-to-long v0, v13

    const/16 v3, 0xd

    invoke-static {v0, v1, v3, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    .line 119
    int-to-long v0, v10

    const/16 v3, 0xa

    invoke-static {v0, v1, v3, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    .line 120
    int-to-long v0, v12

    const/4 v3, 0x7

    invoke-static {v0, v1, v3, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    .line 121
    int-to-long v0, v11

    const/4 v3, 0x4

    invoke-static {v0, v1, v3, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    goto :goto_3

    .line 124
    .end local v15    # "buf":[C
    .end local v16    # "date":Ljava/util/Date;
    .restart local v3    # "date":Ljava/util/Date;
    :cond_8
    move-object/from16 v16, v3

    .end local v3    # "date":Ljava/util/Date;
    .restart local v16    # "date":Ljava/util/Date;
    if-nez v9, :cond_9

    if-nez v14, :cond_9

    if-nez v13, :cond_9

    .line 125
    const-string v0, "0000-00-00"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v15

    .line 126
    .restart local v15    # "buf":[C
    int-to-long v0, v10

    const/16 v3, 0xa

    invoke-static {v0, v1, v3, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    .line 127
    int-to-long v0, v12

    const/4 v3, 0x7

    invoke-static {v0, v1, v3, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    .line 128
    int-to-long v0, v11

    const/4 v3, 0x4

    invoke-static {v0, v1, v3, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    goto :goto_3

    .line 130
    .end local v15    # "buf":[C
    :cond_9
    const-string v0, "0000-00-00T00:00:00"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v15

    .line 131
    .restart local v15    # "buf":[C
    int-to-long v0, v9

    const/16 v3, 0x13

    invoke-static {v0, v1, v3, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    .line 132
    int-to-long v0, v14

    const/16 v3, 0x10

    invoke-static {v0, v1, v3, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    .line 133
    int-to-long v0, v13

    const/16 v3, 0xd

    invoke-static {v0, v1, v3, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    .line 134
    int-to-long v0, v10

    const/16 v3, 0xa

    invoke-static {v0, v1, v3, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    .line 135
    int-to-long v0, v12

    const/4 v3, 0x7

    invoke-static {v0, v1, v3, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    .line 136
    int-to-long v0, v11

    const/4 v3, 0x4

    invoke-static {v0, v1, v3, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    .line 140
    :goto_3
    invoke-virtual {v2, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([C)V

    .line 142
    iget v0, v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    .line 143
    const/16 v0, 0x27

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_4

    .line 145
    :cond_a
    const/16 v0, 0x22

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 147
    .end local v7    # "calendar":Ljava/util/Calendar;
    .end local v8    # "millis":I
    .end local v9    # "second":I
    .end local v10    # "day":I
    .end local v11    # "year":I
    .end local v12    # "month":I
    .end local v13    # "hour":I
    .end local v14    # "minute":I
    .end local v15    # "buf":[C
    :goto_4
    goto :goto_5

    .line 148
    .end local v16    # "date":Ljava/util/Date;
    .restart local v3    # "date":Ljava/util/Date;
    :cond_b
    move-object/from16 v16, v3

    .end local v3    # "date":Ljava/util/Date;
    .restart local v16    # "date":Ljava/util/Date;
    invoke-virtual {v2, v5, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 150
    :goto_5
    return-void
.end method

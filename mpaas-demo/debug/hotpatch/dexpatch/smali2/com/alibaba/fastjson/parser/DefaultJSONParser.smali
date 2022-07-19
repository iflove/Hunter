.class public Lcom/alibaba/fastjson/parser/DefaultJSONParser;
.super Ljava/lang/Object;
.source "DefaultJSONParser.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    }
.end annotation


# static fields
.field public static final NONE:I = 0x0

.field public static final NeedToResolve:I = 0x1

.field public static final TypeNameRedirect:I = 0x2


# instance fields
.field public config:Lcom/alibaba/fastjson/parser/ParserConfig;

.field protected contex:Lcom/alibaba/fastjson/parser/ParseContext;

.field private contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

.field private contextArrayIndex:I

.field private dateFormat:Ljava/text/DateFormat;

.field private dateFormatPattern:Ljava/lang/String;

.field protected extraProcessors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;",
            ">;"
        }
    .end annotation
.end field

.field protected extraTypeProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;",
            ">;"
        }
    .end annotation
.end field

.field public fieldTypeResolver:Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

.field public final lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

.field public resolveStatus:I

.field private resolveTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;",
            ">;"
        }
    .end annotation
.end field

.field public final symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/JSONLexer;)V
    .locals 1
    .param p1, "lexer"    # Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 134
    sget-object v0, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 135
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V
    .locals 3
    .param p1, "lexer"    # Lcom/alibaba/fastjson/parser/JSONLexer;
    .param p2, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    sget-object v0, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormatPattern:Ljava/lang/String;

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    .line 90
    iput v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraTypeProviders:Ljava/util/List;

    .line 93
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraProcessors:Ljava/util/List;

    .line 94
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->fieldTypeResolver:Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

    .line 138
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 139
    iput-object p2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 140
    iget-object v0, p2, Lcom/alibaba/fastjson/parser/ParserConfig;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    .line 142
    iget-char v0, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x1a

    const/16 v2, 0x7b

    if-ne v0, v2, :cond_1

    .line 143
    iget v0, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 144
    .local v0, "index":I
    iget v2, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 146
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_0
    iput-char v1, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 147
    const/16 v1, 0xc

    iput v1, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 148
    .end local v0    # "index":I
    goto :goto_2

    :cond_1
    iget-char v0, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x5b

    if-ne v0, v2, :cond_3

    .line 149
    iget v0, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 150
    .restart local v0    # "index":I
    iget v2, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 152
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_1
    iput-char v1, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 153
    const/16 v1, 0xe

    iput v1, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 154
    .end local v0    # "index":I
    goto :goto_2

    .line 155
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 157
    :goto_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "input"    # Ljava/lang/String;

    .line 118
    sget-object v0, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)V

    .line 119
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;)V
    .locals 2
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 122
    new-instance v0, Lcom/alibaba/fastjson/parser/JSONLexer;

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {v0, p1, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p3, "features"    # I

    .line 126
    new-instance v0, Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-direct {v0, p1, p3}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 127
    return-void
.end method

.method public constructor <init>([CILcom/alibaba/fastjson/parser/ParserConfig;I)V
    .locals 1
    .param p1, "input"    # [C
    .param p2, "length"    # I
    .param p3, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p4, "features"    # I

    .line 130
    new-instance v0, Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-direct {v0, p1, p2, p4}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>([CII)V

    invoke-direct {p0, v0, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 131
    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 3
    .param p1, "token"    # I

    .line 1452
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v0, p1, :cond_0

    .line 1453
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1458
    return-void

    .line 1455
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "syntax error, expect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", actual "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v2, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1456
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V
    .locals 2
    .param p1, "task"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    .line 1303
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1304
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    .line 1306
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1307
    return-void
.end method

.method protected checkListResolve(Ljava/util/Collection;)V
    .locals 5
    .param p1, "array"    # Ljava/util/Collection;

    .line 1056
    instance-of v0, p1, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1057
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLastResolveTask()Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-result-object v0

    .line 1058
    .local v0, "task":Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    new-instance v2, Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;

    move-object v3, p1

    check-cast v3, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v2, p0, v3, v4}, Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;-><init>(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/util/List;I)V

    iput-object v2, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->fieldDeserializer:Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 1059
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    iput-object v2, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->ownerContext:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1060
    iput v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    .line 1061
    .end local v0    # "task":Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    goto :goto_0

    .line 1062
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLastResolveTask()Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-result-object v0

    .line 1063
    .restart local v0    # "task":Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    new-instance v2, Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;

    invoke-direct {v2, p1}, Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->fieldDeserializer:Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 1064
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    iput-object v2, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->ownerContext:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1065
    iput v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    .line 1067
    .end local v0    # "task":Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    :goto_0
    return-void
.end method

.method protected checkMapResolve(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 3
    .param p1, "object"    # Ljava/util/Map;
    .param p2, "fieldName"    # Ljava/lang/Object;

    .line 1071
    new-instance v0, Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    .line 1072
    .local v0, "fieldResolver":Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLastResolveTask()Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-result-object v1

    .line 1073
    .local v1, "task":Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    iput-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->fieldDeserializer:Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 1074
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    iput-object v2, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->ownerContext:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1075
    const/4 v2, 0x0

    iput v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    .line 1076
    return-void
.end method

.method public close()V
    .locals 3

    .line 1462
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    .line 1466
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    .line 1467
    nop

    .line 1468
    return-void

    .line 1463
    :cond_0
    :try_start_1
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not close json text, token : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v2, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1466
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    .line 1467
    throw v0
.end method

.method public config(Lcom/alibaba/fastjson/parser/Feature;Z)V
    .locals 1
    .param p1, "feature"    # Lcom/alibaba/fastjson/parser/Feature;
    .param p2, "state"    # Z

    .line 1448
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->config(Lcom/alibaba/fastjson/parser/Feature;Z)V

    .line 1449
    return-void
.end method

.method public getDateFomartPattern()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormatPattern:Ljava/lang/String;

    return-object v0
.end method

.method public getDateFormat()Ljava/text/DateFormat;
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormatPattern:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v2, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->locale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    .line 103
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v1, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method public getExtraProcessors()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;",
            ">;"
        }
    .end annotation

    .line 1314
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraProcessors:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1315
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraProcessors:Ljava/util/List;

    .line 1317
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraProcessors:Ljava/util/List;

    return-object v0
.end method

.method public getExtraTypeProviders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;",
            ">;"
        }
    .end annotation

    .line 1321
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraTypeProviders:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1322
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraTypeProviders:Ljava/util/List;

    .line 1324
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraTypeProviders:Ljava/util/List;

    return-object v0
.end method

.method protected getLastResolveTask()Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    .locals 2

    .line 1310
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    return-object v0
.end method

.method public handleResovleTask(Ljava/lang/Object;)V
    .locals 9
    .param p1, "value"    # Ljava/lang/Object;

    .line 1471
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1472
    return-void

    .line 1475
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "size":I
    :goto_0
    if-ge v1, v0, :cond_6

    .line 1476
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    .line 1477
    .local v2, "task":Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    iget-object v3, v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->fieldDeserializer:Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 1479
    .local v3, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-nez v3, :cond_1

    .line 1480
    goto :goto_3

    .line 1483
    :cond_1
    const/4 v4, 0x0

    .line 1484
    .local v4, "object":Ljava/lang/Object;
    iget-object v5, v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->ownerContext:Lcom/alibaba/fastjson/parser/ParseContext;

    if-eqz v5, :cond_2

    .line 1485
    iget-object v5, v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->ownerContext:Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v4, v5, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 1488
    :cond_2
    # getter for: Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->referenceValue:Ljava/lang/String;
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->access$000(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)Ljava/lang/String;

    move-result-object v5

    .line 1489
    .local v5, "ref":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1490
    .local v6, "refValue":Ljava/lang/Object;
    const-string v7, "$"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1491
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    iget v8, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    if-ge v7, v8, :cond_4

    .line 1492
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    aget-object v8, v8, v7

    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/ParseContext;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1493
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    aget-object v8, v8, v7

    iget-object v6, v8, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 1491
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .end local v7    # "j":I
    :cond_4
    goto :goto_2

    .line 1497
    :cond_5
    # getter for: Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->context:Lcom/alibaba/fastjson/parser/ParseContext;
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->access$100(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v7

    iget-object v6, v7, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 1499
    :goto_2
    invoke-virtual {v3, v4, v6}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1475
    .end local v2    # "task":Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    .end local v3    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v4    # "object":Ljava/lang/Object;
    .end local v5    # "ref":Ljava/lang/String;
    .end local v6    # "refValue":Ljava/lang/Object;
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1501
    .end local v0    # "size":I
    .end local v1    # "i":I
    :cond_6
    return-void
.end method

.method public parse()Ljava/lang/Object;
    .locals 1

    .line 1362
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "fieldName"    # Ljava/lang/Object;

    .line 1366
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v2, :cond_8

    const/4 v2, 0x4

    const/16 v4, 0x10

    if-eq v0, v2, :cond_5

    const/16 v2, 0xc

    if-eq v0, v2, :cond_3

    const/16 v2, 0xe

    if-eq v0, v2, :cond_2

    const/4 v2, 0x0

    const-string/jumbo v3, "syntax error, "

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 1443
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1373
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1374
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 1375
    .local v0, "treeSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Object;>;"
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 1376
    return-object v0

    .line 1368
    .end local v0    # "treeSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Object;>;"
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1369
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1370
    .local v0, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Object;>;"
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 1371
    return-object v0

    .line 1437
    .end local v0    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Object;>;"
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->isBlankInput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1438
    return-object v2

    .line 1440
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1422
    :pswitch_3
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1424
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v0, v2, :cond_1

    .line 1427
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1429
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 1430
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->integerValue()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 1431
    .local v2, "time":J
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 1433
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 1435
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0

    .line 1425
    .end local v2    # "time":J
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1413
    :pswitch_4
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1414
    return-object v2

    .line 1419
    :pswitch_5
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1420
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 1416
    :pswitch_6
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1417
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 1378
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 1379
    .local v0, "array":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 1380
    return-object v0

    .line 1382
    .end local v0    # "array":Lcom/alibaba/fastjson/JSONArray;
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    iget v1, v1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1385
    .local v0, "object":Lcom/alibaba/fastjson/JSONObject;
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 1396
    .end local v0    # "object":Lcom/alibaba/fastjson/JSONObject;
    :cond_5
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v0

    .line 1397
    .local v0, "stringLiteral":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1399
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v1, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    iget v2, v2, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_7

    .line 1400
    new-instance v1, Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>(Ljava/lang/String;)V

    .line 1402
    .local v1, "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    :try_start_0
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanISO8601DateIfMatch(Z)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1403
    iget-object v2, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1406
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    .line 1403
    return-object v2

    .line 1406
    :cond_6
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    .line 1407
    goto :goto_1

    .line 1406
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    .line 1407
    throw v2

    .line 1410
    .end local v1    # "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    :cond_7
    :goto_1
    return-object v0

    .line 1391
    .end local v0    # "stringLiteral":Ljava/lang/String;
    :cond_8
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    iget v1, v1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    goto :goto_2

    :cond_9
    const/4 v3, 0x0

    :goto_2
    move v0, v3

    .line 1392
    .local v0, "useBigDecimal":Z
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue(Z)Ljava/lang/Number;

    move-result-object v1

    .line 1393
    .local v1, "value":Ljava/lang/Object;
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1394
    return-object v1

    .line 1387
    .end local v0    # "useBigDecimal":Z
    .end local v1    # "value":Ljava/lang/Object;
    :cond_a
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->integerValue()Ljava/lang/Number;

    move-result-object v0

    .line 1388
    .local v0, "intValue":Ljava/lang/Number;
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1389
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public parseArray(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 695
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 696
    .local v0, "array":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/Class;Ljava/util/Collection;)V

    .line 697
    return-object v0
.end method

.method public parseArray(Ljava/lang/Class;Ljava/util/Collection;)V
    .locals 0
    .param p2, "array"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Collection;",
            ")V"
        }
    .end annotation

    .line 701
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;)V

    .line 702
    return-void
.end method

.method public parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "array"    # Ljava/util/Collection;

    .line 706
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V

    .line 707
    return-void
.end method

.method public parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 8
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "array"    # Ljava/util/Collection;
    .param p3, "fieldName"    # Ljava/lang/Object;

    .line 711
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_1

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 715
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_e

    .line 719
    const/4 v0, 0x0

    .line 720
    .local v0, "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x4

    if-ne v1, p1, :cond_2

    .line 721
    sget-object v0, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    .line 722
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_0

    .line 723
    :cond_2
    const-class v1, Ljava/lang/String;

    if-ne v1, p1, :cond_3

    .line 724
    sget-object v0, Lcom/alibaba/fastjson/serializer/StringCodec;->instance:Lcom/alibaba/fastjson/serializer/StringCodec;

    .line 725
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_0

    .line 727
    :cond_3
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    .line 728
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 731
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 732
    .local v1, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-boolean v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->disableCircularReferenceDetect:Z

    if-nez v3, :cond_4

    .line 733
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-virtual {p0, v3, p2, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    .line 736
    :cond_4
    const/4 v3, 0x0

    .line 737
    .local v3, "i":I
    :goto_1
    :try_start_0
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v4, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v5, 0x10

    if-ne v4, v5, :cond_5

    .line 738
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 739
    goto :goto_1

    .line 742
    :cond_5
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v4, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v6, 0xf

    if-ne v4, v6, :cond_6

    .line 743
    nop

    .line 782
    .end local v3    # "i":I
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 783
    nop

    .line 785
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 786
    return-void

    .line 746
    .restart local v3    # "i":I
    :cond_6
    :try_start_1
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    if-ne v4, p1, :cond_7

    .line 747
    sget-object v4, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    invoke-virtual {v4, p0, v6, v6}, Lcom/alibaba/fastjson/serializer/IntegerCodec;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 748
    .local v4, "val":Ljava/lang/Object;
    invoke-interface {p2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 749
    nop

    .end local v4    # "val":Ljava/lang/Object;
    goto :goto_5

    :cond_7
    const-class v4, Ljava/lang/String;

    if-ne v4, p1, :cond_a

    .line 751
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v4, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v4, v2, :cond_8

    .line 752
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v4

    .line 753
    .local v4, "value":Ljava/lang/String;
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v6, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_3

    .line 755
    .end local v4    # "value":Ljava/lang/String;
    :cond_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v4

    .line 756
    .local v4, "obj":Ljava/lang/Object;
    if-nez v4, :cond_9

    goto :goto_2

    .line 758
    :cond_9
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_2
    move-object v4, v6

    .line 761
    .local v4, "value":Ljava/lang/String;
    :goto_3
    invoke-interface {p2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 762
    nop

    .end local v4    # "value":Ljava/lang/String;
    goto :goto_5

    .line 764
    :cond_a
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v4, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v6, 0x8

    if-ne v4, v6, :cond_b

    .line 765
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 766
    const/4 v4, 0x0

    .local v4, "val":Ljava/lang/Object;
    goto :goto_4

    .line 768
    .end local v4    # "val":Ljava/lang/Object;
    :cond_b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, p0, p1, v4}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 770
    .restart local v4    # "val":Ljava/lang/Object;
    :goto_4
    invoke-interface {p2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 771
    iget v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_c

    .line 772
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkListResolve(Ljava/util/Collection;)V

    .line 776
    .end local v4    # "val":Ljava/lang/Object;
    :cond_c
    :goto_5
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v4, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v4, v5, :cond_d

    .line 777
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 736
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 782
    .end local v3    # "i":I
    :catchall_0
    move-exception v2

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 783
    throw v2

    .line 716
    .end local v0    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v1    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_e
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exepct \'[\', but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v2, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final parseArray(Ljava/util/Collection;)V
    .locals 1
    .param p1, "array"    # Ljava/util/Collection;

    .line 1092
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 1093
    return-void
.end method

.method public final parseArray(Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 16
    .param p1, "array"    # Ljava/util/Collection;
    .param p2, "fieldName"    # Ljava/lang/Object;

    .line 1097
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1098
    .local v0, "token":I
    const/16 v3, 0x15

    if-eq v0, v3, :cond_1

    const/16 v3, 0x16

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v0

    goto :goto_1

    .line 1099
    :cond_1
    :goto_0
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1100
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v0, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move v3, v0

    .line 1103
    .end local v0    # "token":I
    .local v3, "token":I
    :goto_1
    const/16 v0, 0xe

    if-ne v3, v0, :cond_2a

    .line 1107
    iget-object v4, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-boolean v4, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->disableCircularReferenceDetect:Z

    .line 1109
    .local v4, "disableCircularReferenceDetect":Z
    iget-object v5, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1110
    .local v5, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    if-nez v4, :cond_2

    .line 1111
    iget-object v6, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    move-object/from16 v7, p2

    invoke-virtual {v1, v6, v2, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    goto :goto_2

    .line 1110
    :cond_2
    move-object/from16 v7, p2

    .line 1116
    :goto_2
    :try_start_0
    iget-object v6, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-char v6, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1117
    .local v6, "ch":C
    const/16 v8, 0x7b

    const/16 v9, 0x5d

    const/4 v11, 0x4

    const/16 v12, 0xc

    const/16 v13, 0x22

    const/16 v14, 0x10

    const/4 v15, 0x1

    if-eq v6, v13, :cond_7

    .line 1118
    if-ne v6, v9, :cond_4

    .line 1119
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1120
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1296
    if-nez v4, :cond_3

    .line 1297
    iput-object v5, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1121
    :cond_3
    return-void

    .line 1123
    :cond_4
    if-ne v6, v8, :cond_6

    .line 1126
    :try_start_1
    iget-object v10, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v8, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v8, v15

    iput v8, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1127
    .local v8, "index":I
    iget-object v10, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v8, v0, :cond_5

    const/16 v0, 0x1a

    goto :goto_3

    :cond_5
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1129
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_3
    iput-char v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1131
    .end local v8    # "index":I
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_4

    .line 1133
    :cond_6
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1135
    :goto_4
    const/4 v0, 0x0

    .local v0, "first_quote":Z
    goto :goto_5

    .line 1137
    .end local v0    # "first_quote":Z
    :cond_7
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v8, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    iget v8, v8, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v0, v8

    if-nez v0, :cond_8

    .line 1138
    const/4 v0, 0x1

    .restart local v0    # "first_quote":Z
    goto :goto_5

    .line 1140
    .end local v0    # "first_quote":Z
    :cond_8
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1141
    const/4 v0, 0x0

    .line 1145
    .restart local v0    # "first_quote":Z
    :goto_5
    const/4 v8, 0x0

    .line 1147
    .local v8, "i":I
    :goto_6
    if-eqz v0, :cond_11

    iget-object v10, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-char v10, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v10, v13, :cond_11

    .line 1148
    iget-object v10, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v10, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanStringValue(C)Ljava/lang/String;

    move-result-object v10

    .line 1150
    .local v10, "value":Ljava/lang/Object;
    iget-object v12, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-char v12, v12, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move v6, v12

    .line 1151
    const/16 v12, 0x2c

    if-ne v6, v12, :cond_c

    .line 1154
    iget-object v12, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v11, v12, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v11, v15

    iput v11, v12, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1155
    .local v11, "index":I
    iget-object v12, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v14, v12, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v11, v14, :cond_9

    const/16 v14, 0x1a

    goto :goto_7

    :cond_9
    iget-object v14, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v14, v14, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1157
    invoke-virtual {v14, v11}, Ljava/lang/String;->charAt(I)C

    move-result v14

    :goto_7
    iput-char v14, v12, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move v6, v14

    .line 1159
    .end local v11    # "index":I
    invoke-interface {v2, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1160
    iget v11, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    if-ne v11, v15, :cond_a

    .line 1161
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkListResolve(Ljava/util/Collection;)V

    .line 1164
    :cond_a
    if-ne v6, v13, :cond_b

    .line 1165
    const/4 v14, 0x4

    goto/16 :goto_10

    .line 1167
    :cond_b
    const/4 v0, 0x0

    .line 1170
    iget-object v11, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_9

    .line 1171
    :cond_c
    if-ne v6, v9, :cond_10

    .line 1174
    iget-object v9, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v11, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v11, v15

    iput v11, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move v9, v11

    .line 1175
    .local v9, "index":I
    iget-object v11, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v12, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v9, v12, :cond_d

    const/16 v12, 0x1a

    goto :goto_8

    :cond_d
    iget-object v12, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v12, v12, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1177
    invoke-virtual {v12, v9}, Ljava/lang/String;->charAt(I)C

    move-result v12

    :goto_8
    iput-char v12, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1179
    .end local v9    # "index":I
    invoke-interface {v2, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1180
    iget v9, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    if-ne v9, v15, :cond_e

    .line 1181
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkListResolve(Ljava/util/Collection;)V

    .line 1183
    :cond_e
    iget-object v9, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v11, 0x10

    invoke-virtual {v9, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1184
    nop

    .line 1296
    .end local v0    # "first_quote":Z
    .end local v6    # "ch":C
    .end local v8    # "i":I
    .end local v10    # "value":Ljava/lang/Object;
    if-nez v4, :cond_f

    .line 1297
    iput-object v5, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1300
    :cond_f
    return-void

    .line 1186
    .restart local v0    # "first_quote":Z
    .restart local v6    # "ch":C
    .restart local v8    # "i":I
    .restart local v10    # "value":Ljava/lang/Object;
    :cond_10
    :try_start_2
    iget-object v11, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1190
    .end local v10    # "value":Ljava/lang/Object;
    :cond_11
    :goto_9
    iget-object v10, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v10, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move v3, v10

    .line 1191
    :goto_a
    const/16 v10, 0x10

    if-ne v3, v10, :cond_12

    .line 1192
    iget-object v10, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1193
    iget-object v10, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v10, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move v3, v10

    .line 1194
    goto :goto_a

    .line 1197
    :cond_12
    const/4 v10, 0x2

    if-eq v3, v10, :cond_22

    const/4 v10, 0x3

    if-eq v3, v10, :cond_20

    const/4 v10, 0x4

    if-eq v3, v10, :cond_1d

    const/4 v10, 0x6

    if-eq v3, v10, :cond_1c

    const/4 v10, 0x7

    if-eq v3, v10, :cond_1b

    const/16 v10, 0x8

    if-eq v3, v10, :cond_1a

    const/16 v10, 0xc

    if-eq v3, v10, :cond_18

    const/16 v10, 0x14

    if-eq v3, v10, :cond_17

    const/16 v10, 0x17

    if-eq v3, v10, :cond_16

    const/16 v10, 0xe

    if-eq v3, v10, :cond_15

    const/16 v11, 0xf

    if-eq v3, v11, :cond_13

    .line 1263
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v11

    const/4 v14, 0x4

    .local v11, "value":Ljava/lang/Object;
    goto/16 :goto_e

    .line 1258
    .end local v11    # "value":Ljava/lang/Object;
    :cond_13
    iget-object v9, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v10, 0x10

    invoke-virtual {v9, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1296
    if-nez v4, :cond_14

    .line 1297
    iput-object v5, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1259
    :cond_14
    return-void

    .line 1245
    :cond_15
    :try_start_3
    new-instance v11, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v11}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 1246
    .local v11, "items":Ljava/util/Collection;
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 1247
    move-object v12, v11

    .line 1248
    .local v12, "value":Ljava/lang/Object;
    const/4 v14, 0x4

    goto/16 :goto_e

    .line 1254
    .end local v11    # "items":Ljava/util/Collection;
    .end local v12    # "value":Ljava/lang/Object;
    :cond_16
    const/16 v10, 0xe

    const/4 v11, 0x0

    .line 1255
    .local v11, "value":Ljava/lang/Object;
    iget-object v12, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/4 v14, 0x4

    invoke-virtual {v12, v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1256
    const/4 v14, 0x4

    goto/16 :goto_e

    .line 1261
    .end local v11    # "value":Ljava/lang/Object;
    :cond_17
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v10, "unclosed jsonArray"

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local v3    # "token":I
    .end local v4    # "disableCircularReferenceDetect":Z
    .end local v5    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local p1    # "array":Ljava/util/Collection;
    .end local p2    # "fieldName":Ljava/lang/Object;
    throw v9

    .line 1237
    .restart local v3    # "token":I
    .restart local v4    # "disableCircularReferenceDetect":Z
    .restart local v5    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local p1    # "array":Ljava/util/Collection;
    .restart local p2    # "fieldName":Ljava/lang/Object;
    :cond_18
    const/16 v10, 0xe

    iget-object v11, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v11, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v12, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    iget v12, v12, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v11, v12

    if-eqz v11, :cond_19

    .line 1238
    new-instance v11, Lcom/alibaba/fastjson/JSONObject;

    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    .local v11, "object":Lcom/alibaba/fastjson/JSONObject;
    goto :goto_b

    .line 1240
    .end local v11    # "object":Lcom/alibaba/fastjson/JSONObject;
    :cond_19
    new-instance v11, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v11}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1242
    .restart local v11    # "object":Lcom/alibaba/fastjson/JSONObject;
    :goto_b
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 1243
    .restart local v12    # "value":Ljava/lang/Object;
    move-object v11, v12

    const/4 v14, 0x4

    goto/16 :goto_e

    .line 1250
    .end local v11    # "object":Lcom/alibaba/fastjson/JSONObject;
    .end local v12    # "value":Ljava/lang/Object;
    :cond_1a
    const/16 v10, 0xe

    const/4 v11, 0x0

    .line 1251
    .local v11, "value":Ljava/lang/Object;
    iget-object v12, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/4 v14, 0x4

    invoke-virtual {v12, v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1252
    goto/16 :goto_e

    .line 1232
    .end local v11    # "value":Ljava/lang/Object;
    :cond_1b
    const/16 v10, 0xe

    const/4 v14, 0x4

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1233
    .restart local v11    # "value":Ljava/lang/Object;
    iget-object v12, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v9, 0x10

    invoke-virtual {v12, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1234
    goto/16 :goto_e

    .line 1228
    .end local v11    # "value":Ljava/lang/Object;
    :cond_1c
    const/16 v10, 0xe

    const/4 v14, 0x4

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v11, v9

    .line 1229
    .restart local v11    # "value":Ljava/lang/Object;
    iget-object v9, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v12, 0x10

    invoke-virtual {v9, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1230
    goto/16 :goto_e

    .line 1211
    .end local v11    # "value":Ljava/lang/Object;
    :cond_1d
    const/16 v10, 0xe

    const/4 v14, 0x4

    iget-object v9, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v9

    .line 1212
    .local v9, "stringLiteral":Ljava/lang/String;
    iget-object v11, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v12, 0x10

    invoke-virtual {v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1214
    iget-object v11, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v11, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v12, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    iget v12, v12, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v11, v12

    if-eqz v11, :cond_1f

    .line 1215
    new-instance v11, Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-direct {v11, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>(Ljava/lang/String;)V

    .line 1216
    .local v11, "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-virtual {v11, v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanISO8601DateIfMatch(Z)Z

    move-result v12

    if-eqz v12, :cond_1e

    .line 1217
    iget-object v12, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v12}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v12

    .restart local v12    # "value":Ljava/lang/Object;
    goto :goto_c

    .line 1219
    .end local v12    # "value":Ljava/lang/Object;
    :cond_1e
    move-object v12, v9

    .line 1221
    .restart local v12    # "value":Ljava/lang/Object;
    :goto_c
    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    .line 1222
    .end local v11    # "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    move-object v11, v12

    goto :goto_e

    .line 1223
    .end local v12    # "value":Ljava/lang/Object;
    :cond_1f
    move-object v11, v9

    .line 1226
    .local v11, "value":Ljava/lang/Object;
    goto :goto_e

    .line 1203
    .end local v9    # "stringLiteral":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/Object;
    :cond_20
    const/16 v10, 0xe

    const/4 v14, 0x4

    iget-object v9, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v9, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v11, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    iget v11, v11, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v9, v11

    if-eqz v9, :cond_21

    .line 1204
    iget-object v9, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue(Z)Ljava/lang/Number;

    move-result-object v9

    move-object v11, v9

    .local v9, "value":Ljava/lang/Object;
    goto :goto_d

    .line 1206
    .end local v9    # "value":Ljava/lang/Object;
    :cond_21
    iget-object v9, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue(Z)Ljava/lang/Number;

    move-result-object v9

    move-object v11, v9

    .line 1208
    .restart local v11    # "value":Ljava/lang/Object;
    :goto_d
    iget-object v9, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v12, 0x10

    invoke-virtual {v9, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1209
    goto :goto_e

    .line 1199
    .end local v11    # "value":Ljava/lang/Object;
    :cond_22
    const/16 v10, 0xe

    const/4 v14, 0x4

    iget-object v9, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->integerValue()Ljava/lang/Number;

    move-result-object v9

    move-object v11, v9

    .line 1200
    .restart local v11    # "value":Ljava/lang/Object;
    iget-object v9, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v12, 0x10

    invoke-virtual {v9, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1201
    nop

    .line 1267
    :goto_e
    invoke-interface {v2, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1268
    iget v9, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    if-ne v9, v15, :cond_23

    .line 1269
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkListResolve(Ljava/util/Collection;)V

    .line 1271
    :cond_23
    iget-object v9, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v9, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v12, 0x10

    if-ne v9, v12, :cond_28

    .line 1273
    iget-object v9, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-char v9, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move v6, v9

    .line 1274
    if-ne v6, v13, :cond_24

    .line 1275
    iget-object v9, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v10, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v10, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    .line 1276
    iget-object v9, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString()V

    goto :goto_10

    .line 1277
    :cond_24
    const/16 v9, 0x30

    if-lt v6, v9, :cond_25

    const/16 v9, 0x39

    if-gt v6, v9, :cond_25

    .line 1278
    iget-object v9, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v10, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v10, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    .line 1279
    iget-object v9, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanNumber()V

    goto :goto_10

    .line 1280
    :cond_25
    const/16 v9, 0x7b

    if-ne v6, v9, :cond_27

    .line 1281
    iget-object v10, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v9, 0xc

    iput v9, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1284
    iget-object v10, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v9, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v9, v15

    iput v9, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1285
    .local v9, "index":I
    iget-object v10, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v12, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v9, v12, :cond_26

    const/16 v12, 0x1a

    goto :goto_f

    :cond_26
    iget-object v12, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v12, v12, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1287
    invoke-virtual {v12, v9}, Ljava/lang/String;->charAt(I)C

    move-result v12

    :goto_f
    iput-char v12, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1288
    .end local v9    # "index":I
    goto :goto_10

    .line 1290
    :cond_27
    iget-object v9, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1145
    .end local v11    # "value":Ljava/lang/Object;
    :cond_28
    :goto_10
    add-int/lit8 v8, v8, 0x1

    const/16 v9, 0x5d

    const/4 v11, 0x4

    const/16 v12, 0xc

    const/16 v14, 0x10

    goto/16 :goto_6

    .line 1296
    .end local v0    # "first_quote":Z
    .end local v6    # "ch":C
    .end local v8    # "i":I
    :catchall_0
    move-exception v0

    if-nez v4, :cond_29

    .line 1297
    iput-object v5, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1299
    :cond_29
    throw v0

    .line 1104
    .end local v4    # "disableCircularReferenceDetect":Z
    .end local v5    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_2a
    move-object/from16 v7, p2

    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "syntax error, expect [, actual "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", pos "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v5, v5, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseArray([Ljava/lang/reflect/Type;)[Ljava/lang/Object;
    .locals 16
    .param p1, "types"    # [Ljava/lang/reflect/Type;

    .line 789
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v2, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/16 v5, 0x10

    if-ne v2, v3, :cond_0

    .line 790
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 791
    return-object v4

    .line 794
    :cond_0
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v2, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v6, 0xe

    const-string/jumbo v7, "syntax error, "

    if-ne v2, v6, :cond_13

    .line 798
    array-length v2, v1

    new-array v2, v2, [Ljava/lang/Object;

    .line 799
    .local v2, "list":[Ljava/lang/Object;
    array-length v8, v1

    const/16 v9, 0xf

    if-nez v8, :cond_2

    .line 800
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v3, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 802
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v3, v9, :cond_1

    .line 806
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 807
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    return-object v3

    .line 803
    :cond_1
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 810
    :cond_2
    iget-object v8, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/4 v10, 0x2

    invoke-virtual {v8, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 812
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v11, v1

    if-ge v8, v11, :cond_11

    .line 815
    iget-object v11, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v11, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v11, v3, :cond_3

    .line 816
    const/4 v11, 0x0

    .line 817
    .local v11, "value":Ljava/lang/Object;
    iget-object v12, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v12, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_4

    .line 819
    .end local v11    # "value":Ljava/lang/Object;
    :cond_3
    aget-object v11, v1, v8

    .line 820
    .local v11, "type":Ljava/lang/reflect/Type;
    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v11, v12, :cond_c

    const-class v12, Ljava/lang/Integer;

    if-ne v11, v12, :cond_4

    goto/16 :goto_3

    .line 828
    :cond_4
    const-class v12, Ljava/lang/String;

    if-ne v11, v12, :cond_6

    .line 829
    iget-object v12, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v12, v12, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/4 v13, 0x4

    if-ne v12, v13, :cond_5

    .line 830
    iget-object v12, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v12

    .line 831
    .local v12, "value":Ljava/lang/Object;
    iget-object v13, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v13, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    move-object v11, v12

    goto/16 :goto_4

    .line 833
    .end local v12    # "value":Ljava/lang/Object;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v12

    .line 834
    .restart local v12    # "value":Ljava/lang/Object;
    iget-object v13, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {v12, v11, v13}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v12

    move-object v11, v12

    goto/16 :goto_4

    .line 837
    .end local v12    # "value":Ljava/lang/Object;
    :cond_6
    const/4 v12, 0x0

    .line 838
    .local v12, "isArray":Z
    const/4 v13, 0x0

    .line 839
    .local v13, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    array-length v14, v1

    add-int/lit8 v14, v14, -0x1

    if-ne v8, v14, :cond_7

    .line 840
    instance-of v14, v11, Ljava/lang/Class;

    if-eqz v14, :cond_7

    .line 841
    move-object v14, v11

    check-cast v14, Ljava/lang/Class;

    .line 842
    .local v14, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v14}, Ljava/lang/Class;->isArray()Z

    move-result v12

    .line 843
    invoke-virtual {v14}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v13

    .line 848
    .end local v14    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_7
    if-eqz v12, :cond_b

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v14, v14, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-eq v14, v6, :cond_b

    .line 849
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 851
    .local v14, "varList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v15, v13}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v15

    .line 853
    .local v15, "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-eq v3, v9, :cond_a

    .line 855
    :goto_1
    nop

    .line 856
    invoke-interface {v15, v0, v11, v4}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 855
    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 858
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v3, v5, :cond_8

    .line 859
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v6, 0xc

    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    const/16 v6, 0xe

    goto :goto_1

    .line 860
    :cond_8
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v3, v9, :cond_9

    .line 861
    goto :goto_2

    .line 863
    :cond_9
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 868
    :cond_a
    :goto_2
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {v14, v11, v3}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v3

    .line 869
    .end local v14    # "varList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v15    # "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .local v3, "value":Ljava/lang/Object;
    move-object v11, v3

    goto :goto_4

    .line 870
    .end local v3    # "value":Ljava/lang/Object;
    :cond_b
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v3, v11}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v3

    .line 871
    .local v3, "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    invoke-interface {v3, v0, v11, v4}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v11, v6

    .local v6, "value":Ljava/lang/Object;
    goto :goto_4

    .line 821
    .end local v3    # "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v6    # "value":Ljava/lang/Object;
    .end local v12    # "isArray":Z
    .end local v13    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_c
    :goto_3
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v3, v10, :cond_d

    .line 822
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 823
    .local v3, "value":Ljava/lang/Object;
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v6, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    move-object v11, v3

    goto :goto_4

    .line 825
    .end local v3    # "value":Ljava/lang/Object;
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v3

    .line 826
    .restart local v3    # "value":Ljava/lang/Object;
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {v3, v11, v6}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    .line 875
    .end local v3    # "value":Ljava/lang/Object;
    .local v11, "value":Ljava/lang/Object;
    :goto_4
    aput-object v11, v2, v8

    .line 877
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v3, v9, :cond_e

    .line 878
    goto :goto_6

    .line 881
    :cond_e
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v3, v5, :cond_10

    .line 885
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    if-ne v8, v3, :cond_f

    .line 886
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v3, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_5

    .line 888
    :cond_f
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v3, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 812
    .end local v11    # "value":Ljava/lang/Object;
    :goto_5
    add-int/lit8 v8, v8, 0x1

    const/16 v3, 0x8

    const/16 v6, 0xe

    goto/16 :goto_0

    .line 882
    .restart local v11    # "value":Ljava/lang/Object;
    :cond_10
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 892
    .end local v8    # "i":I
    .end local v11    # "value":Ljava/lang/Object;
    :cond_11
    :goto_6
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v3, v9, :cond_12

    .line 896
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 898
    return-object v2

    .line 893
    :cond_12
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 795
    .end local v2    # "list":[Ljava/lang/Object;
    :cond_13
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public parseArrayWithType(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 7
    .param p1, "collectionType"    # Ljava/lang/reflect/Type;

    .line 984
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 985
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 986
    const/4 v0, 0x0

    return-object v0

    .line 989
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 991
    .local v0, "actualTypes":[Ljava/lang/reflect/Type;
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    .line 995
    const/4 v1, 0x0

    aget-object v3, v0, v1

    .line 997
    .local v3, "actualTypeArgument":Ljava/lang/reflect/Type;
    instance-of v4, v3, Ljava/lang/Class;

    if-eqz v4, :cond_1

    .line 998
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 999
    .local v1, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object v2, v3

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {p0, v2, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/Class;Ljava/util/Collection;)V

    .line 1000
    return-object v1

    .line 1003
    .end local v1    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_1
    instance-of v4, v3, Ljava/lang/reflect/WildcardType;

    if-eqz v4, :cond_4

    .line 1004
    move-object v2, v3

    check-cast v2, Ljava/lang/reflect/WildcardType;

    .line 1007
    .local v2, "wildcardType":Ljava/lang/reflect/WildcardType;
    invoke-interface {v2}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    aget-object v1, v4, v1

    .line 1010
    .local v1, "upperBoundType":Ljava/lang/reflect/Type;
    const-class v4, Ljava/lang/Object;

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1011
    invoke-interface {v2}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_2

    .line 1013
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 1015
    :cond_2
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "not support type : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1019
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1020
    .local v4, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object v5, v1

    check-cast v5, Ljava/lang/Class;

    invoke-virtual {p0, v5, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/Class;Ljava/util/Collection;)V

    .line 1021
    return-object v4

    .line 1027
    .end local v1    # "upperBoundType":Ljava/lang/reflect/Type;
    .end local v2    # "wildcardType":Ljava/lang/reflect/WildcardType;
    .end local v4    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_4
    instance-of v4, v3, Ljava/lang/reflect/TypeVariable;

    if-eqz v4, :cond_6

    .line 1028
    move-object v4, v3

    check-cast v4, Ljava/lang/reflect/TypeVariable;

    .line 1029
    .local v4, "typeVariable":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {v4}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v5

    .line 1031
    .local v5, "bounds":[Ljava/lang/reflect/Type;
    array-length v6, v5

    if-ne v6, v2, :cond_5

    .line 1035
    aget-object v1, v5, v1

    .line 1036
    .local v1, "boundType":Ljava/lang/reflect/Type;
    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_6

    .line 1037
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1038
    .local v2, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object v6, v1

    check-cast v6, Ljava/lang/Class;

    invoke-virtual {p0, v6, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/Class;Ljava/util/Collection;)V

    .line 1039
    return-object v2

    .line 1032
    .end local v1    # "boundType":Ljava/lang/reflect/Type;
    .end local v2    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_5
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "not support : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1043
    .end local v4    # "typeVariable":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    .end local v5    # "bounds":[Ljava/lang/reflect/Type;
    :cond_6
    instance-of v1, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_7

    .line 1044
    move-object v1, v3

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 1046
    .local v1, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1047
    .restart local v2    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0, v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;)V

    .line 1048
    return-object v2

    .line 1051
    .end local v1    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v2    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_7
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TODO : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 992
    .end local v3    # "actualTypeArgument":Ljava/lang/reflect/Type;
    :cond_8
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not support type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public parseObject()Lcom/alibaba/fastjson/JSONObject;
    .locals 2

    .line 1084
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    iget v1, v1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1087
    .local v0, "object":Lcom/alibaba/fastjson/JSONObject;
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    return-object v1
.end method

.method public parseObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 655
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .line 659
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parseObject(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "fieldName"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 664
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 665
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 666
    const/4 v0, 0x0

    return-object v0

    .line 669
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 670
    const-class v0, [B

    if-ne p1, v0, :cond_1

    .line 671
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->bytesValue()[B

    move-result-object v0

    .line 672
    .local v0, "bytes":[B
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 673
    return-object v0

    .line 676
    .end local v0    # "bytes":[B
    :cond_1
    const-class v0, [C

    if-ne p1, v0, :cond_2

    .line 677
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v0

    .line 678
    .local v0, "strVal":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 679
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    return-object v1

    .line 683
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    .line 686
    .local v0, "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :try_start_0
    invoke-interface {v0, p0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 689
    :catch_0
    move-exception v1

    .line 690
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 687
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 688
    .local v1, "e":Lcom/alibaba/fastjson/JSONException;
    throw v1
.end method

.method public parseObject(Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
    .param p1, "object"    # Ljava/util/Map;

    .line 1080
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27
    .param p1, "object"    # Ljava/util/Map;
    .param p2, "fieldName"    # Ljava/lang/Object;

    .line 161
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    iget-object v4, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 163
    .local v4, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    iget v0, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 164
    .local v0, "token":I
    const/16 v5, 0x8

    const/4 v6, 0x0

    if-ne v0, v5, :cond_0

    .line 165
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 166
    return-object v6

    .line 169
    :cond_0
    const/16 v7, 0xc

    const/16 v8, 0x10

    if-eq v0, v7, :cond_2

    if-ne v0, v8, :cond_1

    goto :goto_0

    .line 170
    :cond_1
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "syntax error, expect {, actual "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 175
    :cond_2
    :goto_0
    instance-of v9, v2, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v9, :cond_3

    .line 176
    move-object v9, v2

    check-cast v9, Lcom/alibaba/fastjson/JSONObject;

    .line 177
    .local v9, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {v9}, Lcom/alibaba/fastjson/JSONObject;->getInnerMap()Ljava/util/Map;

    move-result-object v10

    .line 178
    .local v10, "innerMap":Ljava/util/Map;
    const/4 v9, 0x1

    .line 179
    .local v9, "isJSONObject":Z
    goto :goto_1

    .line 180
    .end local v9    # "isJSONObject":Z
    .end local v10    # "innerMap":Ljava/util/Map;
    :cond_3
    const/4 v9, 0x0

    .line 181
    .restart local v9    # "isJSONObject":Z
    move-object/from16 v10, p1

    .line 185
    .restart local v10    # "innerMap":Ljava/util/Map;
    :goto_1
    iget v11, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v12, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    iget v12, v12, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v11, v12

    if-eqz v11, :cond_4

    const/4 v11, 0x1

    goto :goto_2

    :cond_4
    const/4 v11, 0x0

    .line 186
    .local v11, "allowISO8601DateFormat":Z
    :goto_2
    iget-boolean v14, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->disableCircularReferenceDetect:Z

    .line 188
    .local v14, "disableCircularReferenceDetect":Z
    iget-object v15, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 190
    .local v15, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    const/16 v16, 0x0

    move-object v6, v15

    move v15, v0

    .line 192
    .end local v0    # "token":I
    .local v6, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .local v15, "token":I
    .local v16, "setContextFlag":Z
    :goto_3
    :try_start_0
    iget-char v0, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 193
    .local v0, "ch":C
    const/16 v5, 0x7d

    const/16 v7, 0x22

    if-eq v0, v7, :cond_5

    if-eq v0, v5, :cond_5

    .line 195
    :try_start_1
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 196
    iget-char v8, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move v0, v8

    goto :goto_4

    .line 199
    :cond_5
    move v8, v0

    .end local v0    # "ch":C
    .local v8, "ch":C
    :goto_4
    const/16 v0, 0x2c

    if-ne v8, v0, :cond_6

    .line 200
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 201
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 202
    iget-char v0, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v8, v0

    goto :goto_4

    .line 646
    .end local v8    # "ch":C
    .end local v16    # "setContextFlag":Z
    :catchall_0
    move-exception v0

    move/from16 v25, v9

    move/from16 v23, v11

    goto/16 :goto_2a

    .line 205
    .restart local v8    # "ch":C
    .restart local v16    # "setContextFlag":Z
    :cond_6
    const/16 v21, 0x0

    .line 207
    .local v21, "isObjectKey":Z
    const-string v0, "expect \':\' at "

    const/16 v12, 0x3a

    const-string/jumbo v13, "syntax error, "

    if-ne v8, v7, :cond_8

    .line 208
    :try_start_2
    iget-object v5, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-virtual {v4, v5, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v5

    .line 210
    .local v5, "key":Ljava/lang/Object;
    iget-char v7, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move v8, v7

    .line 211
    if-eq v8, v12, :cond_19

    .line 212
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 213
    iget-char v7, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move v8, v7

    .line 215
    if-ne v8, v12, :cond_7

    goto/16 :goto_8

    .line 216
    :cond_7
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", name "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local v4    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v6    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v9    # "isJSONObject":Z
    .end local v10    # "innerMap":Ljava/util/Map;
    .end local v11    # "allowISO8601DateFormat":Z
    .end local v14    # "disableCircularReferenceDetect":Z
    .end local v15    # "token":I
    .end local p1    # "object":Ljava/util/Map;
    .end local p2    # "fieldName":Ljava/lang/Object;
    throw v7

    .line 219
    .end local v5    # "key":Ljava/lang/Object;
    .restart local v4    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v6    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v9    # "isJSONObject":Z
    .restart local v10    # "innerMap":Ljava/util/Map;
    .restart local v11    # "allowISO8601DateFormat":Z
    .restart local v14    # "disableCircularReferenceDetect":Z
    .restart local v15    # "token":I
    .restart local p1    # "object":Ljava/util/Map;
    .restart local p2    # "fieldName":Ljava/lang/Object;
    :cond_8
    const/16 v5, 0x7d

    if-ne v8, v5, :cond_b

    .line 222
    iget v0, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v5, 0x1

    add-int/2addr v0, v5

    iput v0, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 223
    .local v0, "index":I
    iget v5, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v5, :cond_9

    const/16 v5, 0x1a

    goto :goto_5

    :cond_9
    iget-object v5, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 225
    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_5
    iput-char v5, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 227
    .end local v0    # "index":I
    const/4 v0, 0x0

    iput v0, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 228
    const/16 v0, 0x10

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 229
    nop

    .line 646
    if-nez v14, :cond_a

    .line 647
    iput-object v6, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 229
    :cond_a
    return-object v2

    .line 230
    :cond_b
    const/16 v5, 0x27

    if-ne v8, v5, :cond_e

    .line 231
    :try_start_3
    iget-object v7, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-virtual {v4, v7, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v5

    .line 232
    .restart local v5    # "key":Ljava/lang/Object;
    iget-char v7, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v7, v12, :cond_c

    .line 233
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 235
    :cond_c
    iget-char v7, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move v8, v7

    .line 236
    if-ne v8, v12, :cond_d

    goto/16 :goto_8

    .line 237
    :cond_d
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local v4    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v6    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v9    # "isJSONObject":Z
    .end local v10    # "innerMap":Ljava/util/Map;
    .end local v11    # "allowISO8601DateFormat":Z
    .end local v14    # "disableCircularReferenceDetect":Z
    .end local v15    # "token":I
    .end local p1    # "object":Ljava/util/Map;
    .end local p2    # "fieldName":Ljava/lang/Object;
    throw v7

    .line 239
    .end local v5    # "key":Ljava/lang/Object;
    .restart local v4    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v6    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v9    # "isJSONObject":Z
    .restart local v10    # "innerMap":Ljava/util/Map;
    .restart local v11    # "allowISO8601DateFormat":Z
    .restart local v14    # "disableCircularReferenceDetect":Z
    .restart local v15    # "token":I
    .restart local p1    # "object":Ljava/util/Map;
    .restart local p2    # "fieldName":Ljava/lang/Object;
    :cond_e
    const/16 v5, 0x1a

    if-eq v8, v5, :cond_72

    .line 241
    const/16 v7, 0x2c

    if-eq v8, v7, :cond_71

    .line 243
    const/16 v7, 0x30

    if-lt v8, v7, :cond_f

    const/16 v7, 0x39

    if-le v8, v7, :cond_10

    :cond_f
    const/16 v7, 0x2d

    if-ne v8, v7, :cond_14

    .line 244
    :cond_10
    const/4 v0, 0x0

    iput v0, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 245
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanNumber()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 247
    :try_start_4
    iget v0, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/4 v7, 0x2

    if-ne v0, v7, :cond_11

    .line 248
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->integerValue()Ljava/lang/Number;

    move-result-object v0

    .local v0, "key":Ljava/lang/Object;
    goto :goto_6

    .line 250
    .end local v0    # "key":Ljava/lang/Object;
    :cond_11
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue(Z)Ljava/lang/Number;

    move-result-object v7

    move-object v0, v7

    .line 253
    .restart local v0    # "key":Ljava/lang/Object;
    :goto_6
    if-eqz v9, :cond_12

    .line 254
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v0, v7

    .line 258
    :cond_12
    nop

    .line 259
    :try_start_5
    iget-char v7, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move v8, v7

    .line 260
    if-ne v8, v12, :cond_13

    move-object v5, v0

    goto/16 :goto_8

    .line 261
    :cond_13
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "parse number key error, "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local v4    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v6    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v9    # "isJSONObject":Z
    .end local v10    # "innerMap":Ljava/util/Map;
    .end local v11    # "allowISO8601DateFormat":Z
    .end local v14    # "disableCircularReferenceDetect":Z
    .end local v15    # "token":I
    .end local p1    # "object":Ljava/util/Map;
    .end local p2    # "fieldName":Ljava/lang/Object;
    throw v5

    .line 256
    .end local v0    # "key":Ljava/lang/Object;
    .restart local v4    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v6    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v9    # "isJSONObject":Z
    .restart local v10    # "innerMap":Ljava/util/Map;
    .restart local v11    # "allowISO8601DateFormat":Z
    .restart local v14    # "disableCircularReferenceDetect":Z
    .restart local v15    # "token":I
    .restart local p1    # "object":Ljava/util/Map;
    .restart local p2    # "fieldName":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 257
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "parse number key error, "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local v4    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v6    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v9    # "isJSONObject":Z
    .end local v10    # "innerMap":Ljava/util/Map;
    .end local v11    # "allowISO8601DateFormat":Z
    .end local v14    # "disableCircularReferenceDetect":Z
    .end local v15    # "token":I
    .end local p1    # "object":Ljava/util/Map;
    .end local p2    # "fieldName":Ljava/lang/Object;
    throw v5

    .line 263
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .restart local v4    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v6    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v9    # "isJSONObject":Z
    .restart local v10    # "innerMap":Ljava/util/Map;
    .restart local v11    # "allowISO8601DateFormat":Z
    .restart local v14    # "disableCircularReferenceDetect":Z
    .restart local v15    # "token":I
    .restart local p1    # "object":Ljava/util/Map;
    .restart local p2    # "fieldName":Ljava/lang/Object;
    :cond_14
    const/16 v7, 0x7b

    if-eq v8, v7, :cond_18

    const/16 v7, 0x5b

    if-ne v8, v7, :cond_15

    goto :goto_7

    .line 268
    :cond_15
    iget-object v7, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-virtual {v4, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v7

    .line 269
    .local v7, "key":Ljava/lang/Object;
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 270
    iget-char v5, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move v8, v5

    .line 271
    if-ne v8, v12, :cond_17

    .line 275
    if-eqz v9, :cond_16

    .line 276
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .end local v7    # "key":Ljava/lang/Object;
    .restart local v5    # "key":Ljava/lang/Object;
    goto :goto_8

    .line 275
    .end local v5    # "key":Ljava/lang/Object;
    .restart local v7    # "key":Ljava/lang/Object;
    :cond_16
    move-object v5, v7

    goto :goto_8

    .line 272
    :cond_17
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", actual "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local v4    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v6    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v9    # "isJSONObject":Z
    .end local v10    # "innerMap":Ljava/util/Map;
    .end local v11    # "allowISO8601DateFormat":Z
    .end local v14    # "disableCircularReferenceDetect":Z
    .end local v15    # "token":I
    .end local p1    # "object":Ljava/util/Map;
    .end local p2    # "fieldName":Ljava/lang/Object;
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 264
    .end local v7    # "key":Ljava/lang/Object;
    .restart local v4    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v6    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v9    # "isJSONObject":Z
    .restart local v10    # "innerMap":Ljava/util/Map;
    .restart local v11    # "allowISO8601DateFormat":Z
    .restart local v14    # "disableCircularReferenceDetect":Z
    .restart local v15    # "token":I
    .restart local p1    # "object":Ljava/util/Map;
    .restart local p2    # "fieldName":Ljava/lang/Object;
    :cond_18
    :goto_7
    :try_start_6
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 265
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    move-object v5, v0

    .line 266
    .restart local v5    # "key":Ljava/lang/Object;
    const/16 v21, 0x1

    .line 280
    :cond_19
    :goto_8
    const/16 v0, 0xd

    if-nez v21, :cond_1d

    .line 283
    :try_start_7
    iget v7, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v12, 0x1

    add-int/2addr v7, v12

    iput v7, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 284
    .local v7, "index":I
    iget v12, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v12, :cond_1a

    const/16 v12, 0x1a

    goto :goto_9

    :cond_1a
    iget-object v12, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 286
    invoke-virtual {v12, v7}, Ljava/lang/String;->charAt(I)C

    move-result v12

    :goto_9
    iput-char v12, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move v8, v12

    .line 291
    .end local v7    # "index":I
    :goto_a
    const/16 v7, 0x20

    if-gt v8, v7, :cond_1c

    const/16 v7, 0x20

    if-eq v8, v7, :cond_1b

    const/16 v7, 0xa

    if-eq v8, v7, :cond_1b

    if-eq v8, v0, :cond_1b

    const/16 v7, 0x9

    if-eq v8, v7, :cond_1b

    const/16 v7, 0xc

    if-eq v8, v7, :cond_1b

    const/16 v7, 0x8

    if-ne v8, v7, :cond_1e

    goto :goto_b

    :cond_1b
    const/16 v7, 0x8

    .line 299
    :goto_b
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 300
    iget-char v12, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move v8, v12

    goto :goto_a

    .line 291
    :cond_1c
    const/16 v7, 0x8

    goto :goto_c

    .line 306
    :cond_1d
    const/16 v7, 0x8

    :try_start_8
    iget-char v12, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move v8, v12

    .line 309
    :cond_1e
    :goto_c
    const/4 v12, 0x0

    iput v12, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 311
    const-string v12, "@type"

    if-ne v5, v12, :cond_2e

    :try_start_9
    sget-object v7, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    .line 312
    invoke-virtual {v4, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v7

    if-nez v7, :cond_2d

    .line 313
    iget-object v7, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    const/16 v13, 0x22

    invoke-virtual {v4, v7, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v7

    .line 314
    .local v7, "typeName":Ljava/lang/String;
    iget-object v13, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    iget v0, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move/from16 v25, v9

    const/4 v9, 0x0

    .end local v9    # "isJSONObject":Z
    .local v25, "isJSONObject":Z
    :try_start_a
    invoke-virtual {v13, v7, v9, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-object v13, v0

    .line 316
    .local v13, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v13, :cond_1f

    .line 317
    :try_start_b
    invoke-interface {v2, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 318
    move/from16 v9, v25

    const/16 v5, 0x8

    const/16 v7, 0xc

    const/16 v8, 0x10

    goto/16 :goto_3

    .line 646
    .end local v5    # "key":Ljava/lang/Object;
    .end local v7    # "typeName":Ljava/lang/String;
    .end local v8    # "ch":C
    .end local v13    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v16    # "setContextFlag":Z
    .end local v21    # "isObjectKey":Z
    :catchall_1
    move-exception v0

    move/from16 v23, v11

    goto/16 :goto_2a

    .line 321
    .restart local v5    # "key":Ljava/lang/Object;
    .restart local v7    # "typeName":Ljava/lang/String;
    .restart local v8    # "ch":C
    .restart local v13    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v16    # "setContextFlag":Z
    .restart local v21    # "isObjectKey":Z
    :cond_1f
    const/16 v0, 0x10

    :try_start_c
    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 322
    iget v9, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v12, 0xd

    if-ne v9, v12, :cond_28

    .line 323
    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 325
    const/4 v0, 0x0

    .line 326
    .local v0, "instance":Ljava/lang/Object;
    :try_start_d
    iget-object v9, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v9, v13}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v9

    .line 327
    .local v9, "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    instance-of v12, v9, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    if-eqz v12, :cond_23

    .line 328
    move-object v12, v9

    check-cast v12, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    .line 329
    .local v12, "javaBeanDeserializer":Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;
    invoke-virtual {v12, v1, v13}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    .line 331
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_d
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_22

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    .line 332
    .local v18, "o":Ljava/lang/Object;
    move-object/from16 v19, v18

    check-cast v19, Ljava/util/Map$Entry;

    .line 333
    .local v19, "entry":Ljava/util/Map$Entry;
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    move-object/from16 v22, v20

    .line 334
    .local v22, "entryKey":Ljava/lang/Object;
    move-object/from16 v20, v9

    move/from16 v26, v15

    move-object/from16 v9, v22

    .end local v15    # "token":I
    .end local v22    # "entryKey":Ljava/lang/Object;
    .local v9, "entryKey":Ljava/lang/Object;
    .local v20, "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .local v26, "token":I
    :try_start_e
    instance-of v15, v9, Ljava/lang/String;

    if-eqz v15, :cond_21

    .line 335
    move-object v15, v9

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v12, v15}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v15

    .line 336
    .local v15, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-eqz v15, :cond_20

    .line 337
    move-object/from16 v22, v9

    .end local v9    # "entryKey":Ljava/lang/Object;
    .restart local v22    # "entryKey":Ljava/lang/Object;
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v15, v0, v9}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e

    .line 336
    .end local v22    # "entryKey":Ljava/lang/Object;
    .restart local v9    # "entryKey":Ljava/lang/Object;
    :cond_20
    move-object/from16 v22, v9

    .end local v9    # "entryKey":Ljava/lang/Object;
    .restart local v22    # "entryKey":Ljava/lang/Object;
    goto :goto_e

    .line 334
    .end local v15    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v22    # "entryKey":Ljava/lang/Object;
    .restart local v9    # "entryKey":Ljava/lang/Object;
    :cond_21
    move-object/from16 v22, v9

    .line 340
    .end local v9    # "entryKey":Ljava/lang/Object;
    .end local v18    # "o":Ljava/lang/Object;
    .end local v19    # "entry":Ljava/util/Map$Entry;
    :goto_e
    move-object/from16 v9, v20

    move/from16 v15, v26

    goto :goto_d

    .line 331
    .end local v20    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v26    # "token":I
    .local v9, "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .local v15, "token":I
    :cond_22
    move-object/from16 v20, v9

    move/from16 v26, v15

    .end local v9    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v15    # "token":I
    .restart local v20    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .restart local v26    # "token":I
    goto :goto_f

    .line 327
    .end local v12    # "javaBeanDeserializer":Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;
    .end local v20    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v26    # "token":I
    .restart local v9    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .restart local v15    # "token":I
    :cond_23
    move-object/from16 v20, v9

    move/from16 v26, v15

    .line 343
    .end local v9    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v15    # "token":I
    .restart local v20    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .restart local v26    # "token":I
    :goto_f
    if-nez v0, :cond_26

    .line 344
    const-class v9, Ljava/lang/Cloneable;

    if-ne v13, v9, :cond_24

    .line 345
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    move-object v0, v9

    goto :goto_10

    .line 346
    :cond_24
    const-string v9, "java.util.Collections$EmptyMap"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_25

    .line 347
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v9

    move-object v0, v9

    goto :goto_10

    .line 349
    :cond_25
    invoke-virtual {v13}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    move-object v0, v9

    goto :goto_10

    .line 354
    .end local v0    # "instance":Ljava/lang/Object;
    .end local v20    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :catch_1
    move-exception v0

    goto :goto_11

    .line 353
    .restart local v0    # "instance":Ljava/lang/Object;
    .restart local v20    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_26
    :goto_10
    nop

    .line 646
    if-nez v14, :cond_27

    .line 647
    iput-object v6, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 353
    :cond_27
    return-object v0

    .line 354
    .end local v0    # "instance":Ljava/lang/Object;
    .end local v20    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v26    # "token":I
    .restart local v15    # "token":I
    :catch_2
    move-exception v0

    move/from16 v26, v15

    .line 355
    .end local v15    # "token":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v26    # "token":I
    :goto_11
    :try_start_f
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    const-string v12, "create instance error"

    invoke-direct {v9, v12, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v4    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v6    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v10    # "innerMap":Ljava/util/Map;
    .end local v11    # "allowISO8601DateFormat":Z
    .end local v14    # "disableCircularReferenceDetect":Z
    .end local v25    # "isJSONObject":Z
    .end local v26    # "token":I
    .end local p1    # "object":Ljava/util/Map;
    .end local p2    # "fieldName":Ljava/lang/Object;
    throw v9

    .line 359
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v6    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v10    # "innerMap":Ljava/util/Map;
    .restart local v11    # "allowISO8601DateFormat":Z
    .restart local v14    # "disableCircularReferenceDetect":Z
    .restart local v15    # "token":I
    .restart local v25    # "isJSONObject":Z
    .restart local p1    # "object":Ljava/util/Map;
    .restart local p2    # "fieldName":Ljava/lang/Object;
    :cond_28
    move/from16 v26, v15

    .end local v15    # "token":I
    .restart local v26    # "token":I
    const/4 v0, 0x2

    iput v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    .line 361
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    if-eqz v0, :cond_29

    instance-of v0, v3, Ljava/lang/Integer;

    if-nez v0, :cond_29

    .line 362
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->popContext()V

    .line 365
    :cond_29
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2b

    .line 366
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {v2, v13, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    .line 367
    .local v0, "newObj":Ljava/lang/Object;
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 368
    nop

    .line 646
    if-nez v14, :cond_2a

    .line 647
    iput-object v6, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 368
    :cond_2a
    return-object v0

    .line 371
    .end local v0    # "newObj":Ljava/lang/Object;
    :cond_2b
    :try_start_10
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    .line 372
    .local v0, "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    invoke-interface {v0, v1, v13, v3}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 646
    if-nez v14, :cond_2c

    .line 647
    iput-object v6, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 372
    :cond_2c
    return-object v9

    .line 646
    .end local v0    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v5    # "key":Ljava/lang/Object;
    .end local v7    # "typeName":Ljava/lang/String;
    .end local v8    # "ch":C
    .end local v13    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v16    # "setContextFlag":Z
    .end local v21    # "isObjectKey":Z
    .end local v26    # "token":I
    .restart local v15    # "token":I
    :catchall_2
    move-exception v0

    move/from16 v26, v15

    move/from16 v23, v11

    .end local v15    # "token":I
    .restart local v26    # "token":I
    goto/16 :goto_2a

    .line 312
    .end local v25    # "isJSONObject":Z
    .end local v26    # "token":I
    .restart local v5    # "key":Ljava/lang/Object;
    .restart local v8    # "ch":C
    .local v9, "isJSONObject":Z
    .restart local v15    # "token":I
    .restart local v16    # "setContextFlag":Z
    .restart local v21    # "isObjectKey":Z
    :cond_2d
    move/from16 v25, v9

    move/from16 v26, v15

    const/4 v9, 0x0

    .end local v9    # "isJSONObject":Z
    .end local v15    # "token":I
    .restart local v25    # "isJSONObject":Z
    .restart local v26    # "token":I
    goto :goto_12

    .line 646
    .end local v5    # "key":Ljava/lang/Object;
    .end local v8    # "ch":C
    .end local v16    # "setContextFlag":Z
    .end local v21    # "isObjectKey":Z
    .end local v25    # "isJSONObject":Z
    .end local v26    # "token":I
    .restart local v9    # "isJSONObject":Z
    .restart local v15    # "token":I
    :catchall_3
    move-exception v0

    move/from16 v25, v9

    move/from16 v26, v15

    move/from16 v23, v11

    .end local v9    # "isJSONObject":Z
    .end local v15    # "token":I
    .restart local v25    # "isJSONObject":Z
    .restart local v26    # "token":I
    goto/16 :goto_2a

    .line 311
    .end local v25    # "isJSONObject":Z
    .end local v26    # "token":I
    .restart local v5    # "key":Ljava/lang/Object;
    .restart local v8    # "ch":C
    .restart local v9    # "isJSONObject":Z
    .restart local v15    # "token":I
    .restart local v16    # "setContextFlag":Z
    .restart local v21    # "isObjectKey":Z
    :cond_2e
    move/from16 v25, v9

    move/from16 v26, v15

    const/4 v9, 0x0

    .line 375
    .end local v9    # "isJSONObject":Z
    .end local v15    # "token":I
    .restart local v25    # "isJSONObject":Z
    .restart local v26    # "token":I
    :goto_12
    :try_start_11
    const-string v0, "$ref"
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    const/4 v7, 0x4

    if-ne v5, v0, :cond_3b

    if-eqz v6, :cond_3b

    :try_start_12
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    .line 377
    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 379
    invoke-virtual {v4, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 380
    iget v0, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v0, v7, :cond_3a

    .line 381
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, "ref":Ljava/lang/String;
    const/16 v7, 0xd

    invoke-virtual {v4, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 384
    const/4 v7, 0x0

    .line 385
    .local v7, "refValue":Ljava/lang/Object;
    const-string v9, "@"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_32

    .line 386
    iget-object v9, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 387
    .local v9, "thisContext":Lcom/alibaba/fastjson/parser/ParseContext;
    iget-object v12, v9, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 388
    .local v12, "thisObj":Ljava/lang/Object;
    instance-of v15, v12, [Ljava/lang/Object;

    if-nez v15, :cond_30

    instance-of v15, v12, Ljava/util/Collection;

    if-eqz v15, :cond_2f

    goto :goto_13

    .line 390
    :cond_2f
    iget-object v15, v9, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    if-eqz v15, :cond_31

    .line 391
    iget-object v15, v9, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v15, v15, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object v7, v15

    goto :goto_14

    .line 389
    :cond_30
    :goto_13
    move-object v7, v12

    .line 393
    .end local v9    # "thisContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v12    # "thisObj":Ljava/lang/Object;
    :cond_31
    :goto_14
    goto :goto_17

    :cond_32
    const-string v9, ".."

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_34

    .line 394
    iget-object v9, v6, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-eqz v9, :cond_33

    .line 395
    iget-object v9, v6, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object v7, v9

    goto :goto_17

    .line 397
    :cond_33
    new-instance v9, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v9, v6, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    .line 398
    const/4 v9, 0x1

    iput v9, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    goto :goto_17

    .line 400
    :cond_34
    const-string v9, "$"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_37

    .line 401
    move-object v9, v6

    .line 402
    .local v9, "rootContext":Lcom/alibaba/fastjson/parser/ParseContext;
    :goto_15
    iget-object v12, v9, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    if-eqz v12, :cond_35

    .line 403
    iget-object v12, v9, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    move-object v9, v12

    goto :goto_15

    .line 406
    :cond_35
    iget-object v12, v9, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-eqz v12, :cond_36

    .line 407
    iget-object v12, v9, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object v7, v12

    goto :goto_16

    .line 409
    :cond_36
    new-instance v12, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v12, v9, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    .line 410
    const/4 v12, 0x1

    iput v12, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    .line 412
    .end local v9    # "rootContext":Lcom/alibaba/fastjson/parser/ParseContext;
    :goto_16
    goto :goto_17

    .line 413
    :cond_37
    new-instance v9, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v9, v6, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    .line 414
    const/4 v9, 0x1

    iput v9, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    .line 417
    :goto_17
    iget v9, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v12, 0xd

    if-ne v9, v12, :cond_39

    .line 420
    const/16 v9, 0x10

    invoke-virtual {v4, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 422
    nop

    .line 646
    if-nez v14, :cond_38

    .line 647
    iput-object v6, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 422
    :cond_38
    return-object v7

    .line 418
    :cond_39
    :try_start_13
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local v4    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v6    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v10    # "innerMap":Ljava/util/Map;
    .end local v11    # "allowISO8601DateFormat":Z
    .end local v14    # "disableCircularReferenceDetect":Z
    .end local v25    # "isJSONObject":Z
    .end local v26    # "token":I
    .end local p1    # "object":Ljava/util/Map;
    .end local p2    # "fieldName":Ljava/lang/Object;
    throw v9

    .line 424
    .end local v0    # "ref":Ljava/lang/String;
    .end local v7    # "refValue":Ljava/lang/Object;
    .restart local v4    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v6    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v10    # "innerMap":Ljava/util/Map;
    .restart local v11    # "allowISO8601DateFormat":Z
    .restart local v14    # "disableCircularReferenceDetect":Z
    .restart local v25    # "isJSONObject":Z
    .restart local v26    # "token":I
    .restart local p1    # "object":Ljava/util/Map;
    .restart local p2    # "fieldName":Ljava/lang/Object;
    :cond_3a
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "illegal ref, "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    invoke-static {v9}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local v4    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v6    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v10    # "innerMap":Ljava/util/Map;
    .end local v11    # "allowISO8601DateFormat":Z
    .end local v14    # "disableCircularReferenceDetect":Z
    .end local v25    # "isJSONObject":Z
    .end local v26    # "token":I
    .end local p1    # "object":Ljava/util/Map;
    .end local p2    # "fieldName":Ljava/lang/Object;
    throw v0

    .line 646
    .end local v5    # "key":Ljava/lang/Object;
    .end local v8    # "ch":C
    .end local v16    # "setContextFlag":Z
    .end local v21    # "isObjectKey":Z
    .restart local v4    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v6    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v10    # "innerMap":Ljava/util/Map;
    .restart local v11    # "allowISO8601DateFormat":Z
    .restart local v14    # "disableCircularReferenceDetect":Z
    .restart local v25    # "isJSONObject":Z
    .restart local v26    # "token":I
    .restart local p1    # "object":Ljava/util/Map;
    .restart local p2    # "fieldName":Ljava/lang/Object;
    :catchall_4
    move-exception v0

    move/from16 v23, v11

    move/from16 v15, v26

    goto/16 :goto_2a

    .line 428
    .restart local v5    # "key":Ljava/lang/Object;
    .restart local v8    # "ch":C
    .restart local v16    # "setContextFlag":Z
    .restart local v21    # "isObjectKey":Z
    :cond_3b
    if-nez v14, :cond_3d

    if-nez v16, :cond_3d

    .line 430
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-virtual {v1, v0, v2, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v0

    .line 431
    .local v0, "contextR":Lcom/alibaba/fastjson/parser/ParseContext;
    if-nez v6, :cond_3c

    .line 432
    move-object v6, v0

    .line 434
    :cond_3c
    const/4 v12, 0x1

    move/from16 v16, v12

    .line 438
    .end local v0    # "contextR":Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_3d
    const/16 v0, 0x22

    if-ne v8, v0, :cond_41

    .line 439
    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanStringValue(C)Ljava/lang/String;

    move-result-object v0

    .line 440
    .local v0, "strValue":Ljava/lang/String;
    move-object v7, v0

    .line 442
    .local v7, "value":Ljava/lang/Object;
    if-eqz v11, :cond_3f

    .line 443
    new-instance v12, Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-direct {v12, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>(Ljava/lang/String;)V

    .line 444
    .local v12, "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    const/4 v15, 0x1

    invoke-virtual {v12, v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanISO8601DateIfMatch(Z)Z

    move-result v17

    if-eqz v17, :cond_3e

    .line 445
    iget-object v15, v12, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v15}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    move-object v7, v15

    .line 447
    :cond_3e
    invoke-virtual {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    .line 450
    .end local v12    # "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    :cond_3f
    if-eqz v10, :cond_40

    .line 451
    invoke-interface {v10, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    .line 453
    :cond_40
    invoke-interface {v2, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    .end local v0    # "strValue":Ljava/lang/String;
    :goto_18
    move/from16 v23, v11

    goto/16 :goto_21

    .end local v7    # "value":Ljava/lang/Object;
    :cond_41
    const/16 v0, 0x30

    if-lt v8, v0, :cond_42

    const/16 v0, 0x39

    if-le v8, v0, :cond_43

    :cond_42
    const/16 v0, 0x2d

    if-ne v8, v0, :cond_44

    .line 456
    :cond_43
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanNumberValue()Ljava/lang/Number;

    move-result-object v0

    .line 457
    .local v0, "value":Ljava/lang/Object;
    invoke-interface {v10, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v23, v11

    goto/16 :goto_21

    .line 458
    .end local v0    # "value":Ljava/lang/Object;
    :cond_44
    const/16 v0, 0x5b

    if-ne v8, v0, :cond_4c

    .line 459
    const/16 v0, 0xe

    iput v0, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 462
    iget v0, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v7, 0x1

    add-int/2addr v0, v7

    iput v0, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 463
    .local v0, "index":I
    iget v7, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v7, :cond_45

    const/16 v7, 0x1a

    goto :goto_19

    :cond_45
    iget-object v7, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 465
    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_19
    iput-char v7, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 467
    .end local v0    # "index":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 469
    .local v0, "list":Ljava/util/ArrayList;
    if-eqz v3, :cond_46

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-class v12, Ljava/lang/Integer;

    if-ne v7, v12, :cond_46

    const/4 v7, 0x1

    goto :goto_1a

    :cond_46
    const/4 v7, 0x0

    .line 470
    .local v7, "parentIsArray":Z
    :goto_1a
    if-nez v7, :cond_47

    .line 471
    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 474
    :cond_47
    invoke-virtual {v1, v0, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 475
    new-instance v12, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v12, v0}, Lcom/alibaba/fastjson/JSONArray;-><init>(Ljava/util/List;)V

    .line 476
    .local v12, "value":Ljava/lang/Object;
    if-eqz v10, :cond_48

    .line 477
    invoke-interface {v10, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    .line 479
    :cond_48
    invoke-interface {v2, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    :goto_1b
    iget v15, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 483
    .end local v26    # "token":I
    .restart local v15    # "token":I
    const/16 v9, 0xd

    if-ne v15, v9, :cond_4a

    .line 484
    const/16 v9, 0x10

    :try_start_14
    invoke-virtual {v4, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 485
    nop

    .line 646
    if-nez v14, :cond_49

    .line 647
    iput-object v6, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 485
    :cond_49
    return-object v2

    .line 486
    :cond_4a
    const/16 v9, 0x10

    if-ne v15, v9, :cond_4b

    .line 487
    move/from16 v9, v25

    const/16 v5, 0x8

    const/16 v7, 0xc

    const/16 v8, 0x10

    goto/16 :goto_3

    .line 489
    :cond_4b
    :try_start_15
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    move-object/from16 v22, v0

    .end local v0    # "list":Ljava/util/ArrayList;
    .local v22, "list":Ljava/util/ArrayList;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local v4    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v6    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v10    # "innerMap":Ljava/util/Map;
    .end local v11    # "allowISO8601DateFormat":Z
    .end local v14    # "disableCircularReferenceDetect":Z
    .end local v15    # "token":I
    .end local v25    # "isJSONObject":Z
    .end local p1    # "object":Ljava/util/Map;
    .end local p2    # "fieldName":Ljava/lang/Object;
    throw v9
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 491
    .end local v7    # "parentIsArray":Z
    .end local v12    # "value":Ljava/lang/Object;
    .end local v22    # "list":Ljava/util/ArrayList;
    .restart local v4    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v6    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v10    # "innerMap":Ljava/util/Map;
    .restart local v11    # "allowISO8601DateFormat":Z
    .restart local v14    # "disableCircularReferenceDetect":Z
    .restart local v25    # "isJSONObject":Z
    .restart local v26    # "token":I
    .restart local p1    # "object":Ljava/util/Map;
    .restart local p2    # "fieldName":Ljava/lang/Object;
    :cond_4c
    const/16 v0, 0x7b

    if-ne v8, v0, :cond_5c

    .line 493
    :try_start_16
    iget v0, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v7, 0x1

    add-int/2addr v0, v7

    iput v0, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 494
    .local v0, "index":I
    iget v7, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v7, :cond_4d

    const/16 v7, 0x1a

    goto :goto_1c

    :cond_4d
    iget-object v7, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 496
    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_1c
    iput-char v7, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 497
    const/16 v9, 0xc

    iput v9, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 500
    .end local v0    # "index":I
    instance-of v0, v3, Ljava/lang/Integer;

    .line 502
    .local v0, "parentIsArray":Z
    iget v7, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v12, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    iget v12, v12, Lcom/alibaba/fastjson/parser/Feature;->mask:I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    and-int/2addr v7, v12

    if-eqz v7, :cond_4e

    :try_start_17
    new-instance v7, Lcom/alibaba/fastjson/JSONObject;

    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v7, v12}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    goto :goto_1d

    :cond_4e
    :try_start_18
    new-instance v7, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v7}, Lcom/alibaba/fastjson/JSONObject;-><init>()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    .line 506
    .local v7, "input":Lcom/alibaba/fastjson/JSONObject;
    :goto_1d
    const/4 v12, 0x0

    .line 508
    .local v12, "ctxLocal":Lcom/alibaba/fastjson/parser/ParseContext;
    if-nez v14, :cond_4f

    if-nez v0, :cond_4f

    .line 510
    :try_start_19
    invoke-virtual {v1, v6, v7, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v15
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    move-object v12, v15

    .line 513
    :cond_4f
    const/4 v15, 0x0

    .line 514
    .local v15, "obj":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 515
    .local v19, "objParsed":Z
    :try_start_1a
    iget-object v9, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->fieldTypeResolver:Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    if-eqz v9, :cond_52

    .line 516
    if-eqz v5, :cond_50

    :try_start_1b
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    goto :goto_1e

    :cond_50
    const/4 v9, 0x0

    .line 517
    .local v9, "resolveFieldName":Ljava/lang/String;
    :goto_1e
    move/from16 v23, v11

    .end local v11    # "allowISO8601DateFormat":Z
    .local v23, "allowISO8601DateFormat":Z
    :try_start_1c
    iget-object v11, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->fieldTypeResolver:Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

    invoke-interface {v11, v2, v9}, Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;->resolve(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Type;

    move-result-object v11

    .line 518
    .local v11, "fieldType":Ljava/lang/reflect/Type;
    if-eqz v11, :cond_51

    .line 519
    move-object/from16 v22, v9

    .end local v9    # "resolveFieldName":Ljava/lang/String;
    .local v22, "resolveFieldName":Ljava/lang/String;
    iget-object v9, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v9, v11}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v9

    .line 520
    .local v9, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    invoke-interface {v9, v1, v11, v5}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v15, v24

    .line 521
    const/16 v19, 0x1

    goto :goto_1f

    .line 518
    .end local v22    # "resolveFieldName":Ljava/lang/String;
    .local v9, "resolveFieldName":Ljava/lang/String;
    :cond_51
    move-object/from16 v22, v9

    .end local v9    # "resolveFieldName":Ljava/lang/String;
    .restart local v22    # "resolveFieldName":Ljava/lang/String;
    goto :goto_1f

    .line 515
    .end local v22    # "resolveFieldName":Ljava/lang/String;
    .end local v23    # "allowISO8601DateFormat":Z
    .local v11, "allowISO8601DateFormat":Z
    :cond_52
    move/from16 v23, v11

    .line 524
    .end local v11    # "allowISO8601DateFormat":Z
    .restart local v23    # "allowISO8601DateFormat":Z
    :goto_1f
    if-nez v19, :cond_53

    .line 525
    invoke-virtual {v1, v7, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v15, v9

    .line 527
    :cond_53
    if-eqz v12, :cond_54

    if-eq v7, v15, :cond_54

    .line 528
    iput-object v2, v12, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 531
    :cond_54
    iget v9, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    const/4 v11, 0x1

    if-ne v9, v11, :cond_55

    .line 532
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v2, v9}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkMapResolve(Ljava/util/Map;Ljava/lang/Object;)V

    .line 535
    :cond_55
    if-eqz v10, :cond_56

    .line 536
    invoke-interface {v10, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    .line 538
    :cond_56
    invoke-interface {v2, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    :goto_20
    if-eqz v0, :cond_57

    .line 542
    invoke-virtual {v1, v6, v15, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    .line 545
    :cond_57
    iget v9, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    .line 546
    .end local v26    # "token":I
    .local v9, "token":I
    const/16 v11, 0xd

    if-ne v9, v11, :cond_5a

    .line 547
    const/16 v11, 0x10

    :try_start_1d
    invoke-virtual {v4, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 549
    if-nez v14, :cond_58

    .line 550
    iput-object v6, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    .line 552
    :cond_58
    nop

    .line 646
    if-nez v14, :cond_59

    .line 647
    iput-object v6, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 552
    :cond_59
    return-object v2

    .line 646
    .end local v0    # "parentIsArray":Z
    .end local v5    # "key":Ljava/lang/Object;
    .end local v7    # "input":Lcom/alibaba/fastjson/JSONObject;
    .end local v8    # "ch":C
    .end local v12    # "ctxLocal":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v15    # "obj":Ljava/lang/Object;
    .end local v16    # "setContextFlag":Z
    .end local v19    # "objParsed":Z
    .end local v21    # "isObjectKey":Z
    :catchall_5
    move-exception v0

    move v15, v9

    goto/16 :goto_2a

    .line 553
    .restart local v0    # "parentIsArray":Z
    .restart local v5    # "key":Ljava/lang/Object;
    .restart local v7    # "input":Lcom/alibaba/fastjson/JSONObject;
    .restart local v8    # "ch":C
    .restart local v12    # "ctxLocal":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v15    # "obj":Ljava/lang/Object;
    .restart local v16    # "setContextFlag":Z
    .restart local v19    # "objParsed":Z
    .restart local v21    # "isObjectKey":Z
    :cond_5a
    const/16 v11, 0x10

    if-ne v9, v11, :cond_5b

    .line 554
    move v15, v9

    move/from16 v11, v23

    move/from16 v9, v25

    const/16 v5, 0x8

    const/16 v7, 0xc

    const/16 v8, 0x10

    goto/16 :goto_3

    .line 556
    :cond_5b
    :try_start_1e
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    move/from16 v22, v0

    .end local v0    # "parentIsArray":Z
    .local v22, "parentIsArray":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local v4    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v6    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v9    # "token":I
    .end local v10    # "innerMap":Ljava/util/Map;
    .end local v14    # "disableCircularReferenceDetect":Z
    .end local v23    # "allowISO8601DateFormat":Z
    .end local v25    # "isJSONObject":Z
    .end local p1    # "object":Ljava/util/Map;
    .end local p2    # "fieldName":Ljava/lang/Object;
    throw v11
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_5

    .line 558
    .end local v7    # "input":Lcom/alibaba/fastjson/JSONObject;
    .end local v12    # "ctxLocal":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v15    # "obj":Ljava/lang/Object;
    .end local v19    # "objParsed":Z
    .end local v22    # "parentIsArray":Z
    .restart local v4    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v6    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v10    # "innerMap":Ljava/util/Map;
    .restart local v11    # "allowISO8601DateFormat":Z
    .restart local v14    # "disableCircularReferenceDetect":Z
    .restart local v25    # "isJSONObject":Z
    .restart local v26    # "token":I
    .restart local p1    # "object":Ljava/util/Map;
    .restart local p2    # "fieldName":Ljava/lang/Object;
    :cond_5c
    move/from16 v23, v11

    .end local v11    # "allowISO8601DateFormat":Z
    .restart local v23    # "allowISO8601DateFormat":Z
    const/16 v0, 0x74

    if-ne v8, v0, :cond_5d

    .line 559
    :try_start_1f
    iget-object v0, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string/jumbo v7, "true"

    iget v9, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 560
    iget v0, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x3

    iput v0, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 561
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 562
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    .line 564
    :cond_5d
    const/16 v0, 0x66

    if-ne v8, v0, :cond_6c

    .line 565
    iget-object v0, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string v9, "false"

    iget v11, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v0, v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 566
    iget v0, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v7

    iput v0, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 567
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 568
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    :cond_5e
    :goto_21
    iget-char v0, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 590
    .end local v8    # "ch":C
    .local v0, "ch":C
    const/16 v7, 0x2c

    if-eq v0, v7, :cond_5f

    const/16 v7, 0x7d

    if-eq v0, v7, :cond_5f

    .line 591
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 592
    iget-char v7, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move v0, v7

    .line 595
    :cond_5f
    const/16 v7, 0x2c

    if-ne v0, v7, :cond_61

    .line 598
    iget v7, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v8, 0x1

    add-int/2addr v7, v8

    iput v7, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 599
    .local v7, "index":I
    iget v8, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v8, :cond_60

    const/16 v8, 0x1a

    goto :goto_22

    :cond_60
    iget-object v8, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 601
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_22
    iput-char v8, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 603
    .end local v7    # "index":I
    const/4 v7, 0x0

    const/4 v9, 0x1

    const/16 v12, 0x10

    goto/16 :goto_29

    .line 604
    :cond_61
    const/16 v7, 0x7d

    if-ne v0, v7, :cond_6b

    .line 607
    iget v7, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v8, 0x1

    add-int/2addr v7, v8

    iput v7, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 608
    .restart local v7    # "index":I
    iget v8, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v8, :cond_62

    const/16 v8, 0x1a

    goto :goto_23

    :cond_62
    iget-object v8, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 610
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_23
    iput-char v8, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move v0, v8

    .line 612
    .end local v7    # "index":I
    const/4 v7, 0x0

    iput v7, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 614
    const/16 v7, 0x2c

    if-ne v0, v7, :cond_64

    .line 615
    iget v7, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v8, 0x1

    add-int/2addr v7, v8

    iput v7, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 616
    .restart local v7    # "index":I
    iget v8, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v8, :cond_63

    const/16 v8, 0x1a

    goto :goto_24

    :cond_63
    iget-object v8, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 618
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_24
    iput-char v8, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 619
    const/16 v8, 0x10

    iput v8, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 620
    .end local v7    # "index":I
    goto :goto_27

    :cond_64
    const/16 v7, 0x7d

    if-ne v0, v7, :cond_66

    .line 621
    iget v7, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v8, 0x1

    add-int/2addr v7, v8

    iput v7, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 622
    .restart local v7    # "index":I
    iget v8, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v8, :cond_65

    const/16 v8, 0x1a

    goto :goto_25

    :cond_65
    iget-object v8, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 624
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_25
    iput-char v8, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 625
    const/16 v8, 0xd

    iput v8, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 626
    .end local v7    # "index":I
    goto :goto_27

    :cond_66
    const/16 v7, 0x5d

    if-ne v0, v7, :cond_68

    .line 627
    iget v7, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v9, 0x1

    add-int/2addr v7, v9

    iput v7, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 628
    .restart local v7    # "index":I
    iget v8, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v8, :cond_67

    const/16 v8, 0x1a

    goto :goto_26

    :cond_67
    iget-object v8, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 630
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_26
    iput-char v8, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 631
    const/16 v8, 0xf

    iput v8, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 632
    .end local v7    # "index":I
    goto :goto_27

    .line 633
    :cond_68
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 636
    :goto_27
    if-nez v14, :cond_69

    .line 637
    iget-object v7, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-virtual {v1, v7, v2, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_7

    .line 640
    :cond_69
    nop

    .line 646
    if-nez v14, :cond_6a

    .line 647
    iput-object v6, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 640
    :cond_6a
    return-object v2

    .line 642
    :cond_6b
    :try_start_20
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local v4    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v6    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v10    # "innerMap":Ljava/util/Map;
    .end local v14    # "disableCircularReferenceDetect":Z
    .end local v23    # "allowISO8601DateFormat":Z
    .end local v25    # "isJSONObject":Z
    .end local v26    # "token":I
    .end local p1    # "object":Ljava/util/Map;
    .end local p2    # "fieldName":Ljava/lang/Object;
    throw v7

    .line 571
    .end local v0    # "ch":C
    .restart local v4    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v6    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v8    # "ch":C
    .restart local v10    # "innerMap":Ljava/util/Map;
    .restart local v14    # "disableCircularReferenceDetect":Z
    .restart local v23    # "allowISO8601DateFormat":Z
    .restart local v25    # "isJSONObject":Z
    .restart local v26    # "token":I
    .restart local p1    # "object":Ljava/util/Map;
    .restart local p2    # "fieldName":Ljava/lang/Object;
    :cond_6c
    const/4 v7, 0x0

    const/4 v9, 0x1

    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 572
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    .line 574
    .local v0, "value":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-class v12, Lcom/alibaba/fastjson/JSONObject;

    if-ne v11, v12, :cond_6d

    .line 575
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_28

    :cond_6d
    move-object v11, v5

    .line 574
    :goto_28
    invoke-interface {v2, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    iget v11, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v12, 0xd

    if-ne v11, v12, :cond_6f

    .line 580
    const/16 v7, 0x10

    invoke-virtual {v4, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_7

    .line 581
    nop

    .line 646
    if-nez v14, :cond_6e

    .line 647
    iput-object v6, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 581
    :cond_6e
    return-object v2

    .line 582
    :cond_6f
    :try_start_21
    iget v11, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v12, 0x10

    if-ne v11, v12, :cond_70

    .line 583
    nop

    .line 192
    .end local v0    # "value":Ljava/lang/Object;
    .end local v5    # "key":Ljava/lang/Object;
    .end local v8    # "ch":C
    .end local v21    # "isObjectKey":Z
    :goto_29
    move/from16 v11, v23

    move/from16 v9, v25

    move/from16 v15, v26

    const/16 v5, 0x8

    const/16 v7, 0xc

    const/16 v8, 0x10

    goto/16 :goto_3

    .line 585
    .restart local v0    # "value":Ljava/lang/Object;
    .restart local v5    # "key":Ljava/lang/Object;
    .restart local v8    # "ch":C
    .restart local v21    # "isObjectKey":Z
    :cond_70
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local v4    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v6    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v10    # "innerMap":Ljava/util/Map;
    .end local v14    # "disableCircularReferenceDetect":Z
    .end local v23    # "allowISO8601DateFormat":Z
    .end local v25    # "isJSONObject":Z
    .end local v26    # "token":I
    .end local p1    # "object":Ljava/util/Map;
    .end local p2    # "fieldName":Ljava/lang/Object;
    throw v7

    .line 646
    .end local v0    # "value":Ljava/lang/Object;
    .end local v5    # "key":Ljava/lang/Object;
    .end local v8    # "ch":C
    .end local v16    # "setContextFlag":Z
    .end local v21    # "isObjectKey":Z
    .restart local v4    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v6    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v10    # "innerMap":Ljava/util/Map;
    .restart local v11    # "allowISO8601DateFormat":Z
    .restart local v14    # "disableCircularReferenceDetect":Z
    .restart local v25    # "isJSONObject":Z
    .restart local v26    # "token":I
    .restart local p1    # "object":Ljava/util/Map;
    .restart local p2    # "fieldName":Ljava/lang/Object;
    :catchall_6
    move-exception v0

    move/from16 v23, v11

    move/from16 v15, v26

    .end local v11    # "allowISO8601DateFormat":Z
    .restart local v23    # "allowISO8601DateFormat":Z
    goto :goto_2a

    .line 242
    .end local v23    # "allowISO8601DateFormat":Z
    .end local v25    # "isJSONObject":Z
    .end local v26    # "token":I
    .restart local v8    # "ch":C
    .local v9, "isJSONObject":Z
    .restart local v11    # "allowISO8601DateFormat":Z
    .local v15, "token":I
    .restart local v16    # "setContextFlag":Z
    .restart local v21    # "isObjectKey":Z
    :cond_71
    move/from16 v25, v9

    move/from16 v23, v11

    move/from16 v26, v15

    .end local v9    # "isJSONObject":Z
    .end local v11    # "allowISO8601DateFormat":Z
    .end local v15    # "token":I
    .restart local v23    # "allowISO8601DateFormat":Z
    .restart local v25    # "isJSONObject":Z
    .restart local v26    # "token":I
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local v4    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v6    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v10    # "innerMap":Ljava/util/Map;
    .end local v14    # "disableCircularReferenceDetect":Z
    .end local v23    # "allowISO8601DateFormat":Z
    .end local v25    # "isJSONObject":Z
    .end local v26    # "token":I
    .end local p1    # "object":Ljava/util/Map;
    .end local p2    # "fieldName":Ljava/lang/Object;
    throw v0

    .line 240
    .restart local v4    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v6    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v9    # "isJSONObject":Z
    .restart local v10    # "innerMap":Ljava/util/Map;
    .restart local v11    # "allowISO8601DateFormat":Z
    .restart local v14    # "disableCircularReferenceDetect":Z
    .restart local v15    # "token":I
    .restart local p1    # "object":Ljava/util/Map;
    .restart local p2    # "fieldName":Ljava/lang/Object;
    :cond_72
    move/from16 v25, v9

    move/from16 v23, v11

    move/from16 v26, v15

    .end local v9    # "isJSONObject":Z
    .end local v11    # "allowISO8601DateFormat":Z
    .end local v15    # "token":I
    .restart local v23    # "allowISO8601DateFormat":Z
    .restart local v25    # "isJSONObject":Z
    .restart local v26    # "token":I
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .end local v4    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v6    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v10    # "innerMap":Ljava/util/Map;
    .end local v14    # "disableCircularReferenceDetect":Z
    .end local v23    # "allowISO8601DateFormat":Z
    .end local v25    # "isJSONObject":Z
    .end local v26    # "token":I
    .end local p1    # "object":Ljava/util/Map;
    .end local p2    # "fieldName":Ljava/lang/Object;
    throw v0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_7

    .line 646
    .end local v8    # "ch":C
    .end local v16    # "setContextFlag":Z
    .end local v21    # "isObjectKey":Z
    .restart local v4    # "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .restart local v6    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v10    # "innerMap":Ljava/util/Map;
    .restart local v14    # "disableCircularReferenceDetect":Z
    .restart local v23    # "allowISO8601DateFormat":Z
    .restart local v25    # "isJSONObject":Z
    .restart local v26    # "token":I
    .restart local p1    # "object":Ljava/util/Map;
    .restart local p2    # "fieldName":Ljava/lang/Object;
    :catchall_7
    move-exception v0

    move/from16 v15, v26

    goto :goto_2a

    .end local v23    # "allowISO8601DateFormat":Z
    .end local v25    # "isJSONObject":Z
    .end local v26    # "token":I
    .restart local v9    # "isJSONObject":Z
    .restart local v11    # "allowISO8601DateFormat":Z
    .restart local v15    # "token":I
    :catchall_8
    move-exception v0

    move/from16 v25, v9

    move/from16 v23, v11

    move/from16 v26, v15

    .end local v9    # "isJSONObject":Z
    .end local v11    # "allowISO8601DateFormat":Z
    .restart local v23    # "allowISO8601DateFormat":Z
    .restart local v25    # "isJSONObject":Z
    :goto_2a
    if-nez v14, :cond_73

    .line 647
    iput-object v6, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 649
    :cond_73
    throw v0
.end method

.method public parseObject(Ljava/lang/Object;)V
    .locals 14
    .param p1, "object"    # Ljava/lang/Object;

    .line 902
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 903
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 904
    .local v1, "beanDeser":Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v2

    .line 905
    .local v2, "deserizer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    instance-of v3, v2, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    if-eqz v3, :cond_0

    .line 906
    move-object v1, v2

    check-cast v1, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    .line 911
    :cond_0
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 912
    .local v3, "token":I
    const/16 v4, 0xc

    const/16 v5, 0x10

    if-eq v3, v4, :cond_2

    if-ne v3, v5, :cond_1

    goto :goto_0

    .line 913
    :cond_1
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "syntax error, expect {, actual "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 918
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v4

    .line 920
    .local v4, "key":Ljava/lang/String;
    const/16 v6, 0xd

    if-nez v4, :cond_4

    .line 921
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v7, v7, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v7, v6, :cond_3

    .line 922
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v6, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 923
    nop

    .line 981
    .end local v4    # "key":Ljava/lang/String;
    return-void

    .line 925
    .restart local v4    # "key":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v7, v7, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v7, v5, :cond_4

    .line 926
    goto :goto_0

    .line 930
    :cond_4
    const/4 v7, 0x0

    .line 931
    .local v7, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-eqz v1, :cond_5

    .line 932
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v7

    .line 935
    :cond_5
    const/16 v8, 0x3a

    if-nez v7, :cond_7

    .line 936
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v9, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v10, Lcom/alibaba/fastjson/parser/Feature;->IgnoreNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    iget v10, v10, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v9, v10

    if-eqz v9, :cond_6

    .line 940
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v9, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    .line 941
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    .line 943
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v8, v8, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v8, v6, :cond_2

    .line 944
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 945
    return-void

    .line 937
    :cond_6
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setter not found, class "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", property "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 950
    :cond_7
    iget-object v9, v7, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v9, v9, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 951
    .local v9, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v10, v7, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v10, v10, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 953
    .local v10, "fieldType":Ljava/lang/reflect/Type;
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x0

    if-ne v9, v11, :cond_8

    .line 954
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v11, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    .line 955
    sget-object v8, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    invoke-virtual {v8, p0, v10, v12}, Lcom/alibaba/fastjson/serializer/IntegerCodec;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .local v8, "fieldValue":Ljava/lang/Object;
    goto :goto_1

    .line 956
    .end local v8    # "fieldValue":Ljava/lang/Object;
    :cond_8
    const-class v11, Ljava/lang/String;

    if-ne v9, v11, :cond_9

    .line 957
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v11, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    .line 958
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "fieldValue":Ljava/lang/Object;
    goto :goto_1

    .line 959
    .end local v8    # "fieldValue":Ljava/lang/Object;
    :cond_9
    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v9, v11, :cond_a

    .line 960
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v11, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    .line 961
    sget-object v8, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    invoke-virtual {v8, p0, v10, v12}, Lcom/alibaba/fastjson/serializer/IntegerCodec;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .restart local v8    # "fieldValue":Ljava/lang/Object;
    goto :goto_1

    .line 963
    .end local v8    # "fieldValue":Ljava/lang/Object;
    :cond_a
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v11, v9, v10}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v11

    .line 965
    .local v11, "fieldValueDeserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    iget-object v13, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v13, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    .line 966
    invoke-interface {v11, p0, v10, v12}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 969
    .end local v11    # "fieldValueDeserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .restart local v8    # "fieldValue":Ljava/lang/Object;
    :goto_1
    invoke-virtual {v7, p1, v8}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 972
    .end local v8    # "fieldValue":Ljava/lang/Object;
    .end local v9    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "fieldType":Ljava/lang/reflect/Type;
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v8, v8, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v8, v5, :cond_b

    .line 973
    goto/16 :goto_0

    .line 976
    :cond_b
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v8, v8, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v8, v6, :cond_c

    .line 977
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v6, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 978
    return-void

    .line 980
    .end local v4    # "key":Ljava/lang/String;
    .end local v7    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_c
    goto/16 :goto_0
.end method

.method public parseString()Ljava/lang/String;
    .locals 7

    .line 1504
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1505
    .local v0, "token":I
    const/16 v1, 0x10

    const/4 v2, 0x4

    if-ne v0, v2, :cond_6

    .line 1506
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v2

    .line 1507
    .local v2, "val":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-char v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v4, 0x2c

    const/16 v5, 0x1a

    if-ne v3, v4, :cond_1

    .line 1508
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v4, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move v3, v4

    .line 1509
    .local v3, "index":I
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v6, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v6, :cond_0

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v5, v5, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1511
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_0
    iput-char v5, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1512
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iput v1, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1513
    .end local v3    # "index":I
    goto :goto_3

    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-char v1, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x5d

    if-ne v1, v3, :cond_3

    .line 1514
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move v1, v3

    .line 1515
    .local v1, "index":I
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v4, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v4, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1517
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_1
    iput-char v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1518
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v4, 0xf

    iput v4, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1519
    .end local v1    # "index":I
    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-char v1, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x7d

    if-ne v1, v3, :cond_5

    .line 1520
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move v1, v3

    .line 1521
    .restart local v1    # "index":I
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v4, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v4, :cond_4

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v4, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1523
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_2
    iput-char v5, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1524
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v4, 0xd

    iput v4, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1525
    .end local v1    # "index":I
    goto :goto_3

    .line 1526
    :cond_5
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1528
    :goto_3
    return-object v2

    .line 1531
    .end local v2    # "val":Ljava/lang/String;
    :cond_6
    const/4 v2, 0x2

    if-ne v0, v2, :cond_7

    .line 1532
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v2

    .line 1533
    .restart local v2    # "val":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1534
    return-object v2

    .line 1537
    .end local v2    # "val":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v1

    .line 1539
    .local v1, "value":Ljava/lang/Object;
    if-nez v1, :cond_8

    .line 1540
    const/4 v2, 0x0

    return-object v2

    .line 1543
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected popContext()V
    .locals 4

    .line 1335
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1336
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    iget v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    add-int/lit8 v2, v1, -0x1

    const/4 v3, 0x0

    aput-object v3, v0, v2

    .line 1337
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    .line 1338
    return-void
.end method

.method protected setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
    .locals 6
    .param p1, "parent"    # Lcom/alibaba/fastjson/parser/ParseContext;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;

    .line 1341
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-boolean v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->disableCircularReferenceDetect:Z

    if-eqz v0, :cond_0

    .line 1342
    const/4 v0, 0x0

    return-object v0

    .line 1345
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-direct {v0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/ParseContext;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1347
    iget v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    .line 1348
    .local v0, "i":I
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    if-nez v1, :cond_1

    .line 1349
    const/16 v1, 0x8

    new-array v1, v1, [Lcom/alibaba/fastjson/parser/ParseContext;

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    goto :goto_0

    .line 1350
    :cond_1
    array-length v2, v1

    if-lt v0, v2, :cond_2

    .line 1351
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    .line 1352
    .local v2, "newLen":I
    new-array v3, v2, [Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1353
    .local v3, "newArray":[Lcom/alibaba/fastjson/parser/ParseContext;
    array-length v4, v1

    const/4 v5, 0x0

    invoke-static {v1, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1354
    iput-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1356
    .end local v2    # "newLen":I
    .end local v3    # "newArray":[Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    aput-object v2, v1, v0

    .line 1358
    return-object v2
.end method

.method public setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
    .locals 1
    .param p1, "context"    # Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1328
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-boolean v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->disableCircularReferenceDetect:Z

    if-eqz v0, :cond_0

    .line 1329
    return-void

    .line 1331
    :cond_0
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1332
    return-void
.end method

.method public setDateFomrat(Ljava/text/DateFormat;)V
    .locals 0
    .param p1, "dateFormat"    # Ljava/text/DateFormat;

    .line 114
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    .line 115
    return-void
.end method

.method public setDateFormat(Ljava/lang/String;)V
    .locals 1
    .param p1, "dateFormat"    # Ljava/lang/String;

    .line 109
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormatPattern:Ljava/lang/String;

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    .line 111
    return-void
.end method

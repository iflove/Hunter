.class public Lcom/alibaba/fastjson/parser/SymbolTable;
.super Ljava/lang/Object;
.source "SymbolTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/parser/SymbolTable$Entry;
    }
.end annotation


# instance fields
.field private final indexMask:I

.field private final symbols:[Lcom/alibaba/fastjson/parser/SymbolTable$Entry;


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .param p1, "tableSize"    # I

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->indexMask:I

    .line 30
    new-array v0, p1, [Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols:[Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    .line 32
    const-string v0, "$ref"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol(Ljava/lang/String;III)Ljava/lang/String;

    .line 33
    const-string v0, "@type"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol(Ljava/lang/String;III)Ljava/lang/String;

    .line 34
    return-void
.end method

.method private static subString(Ljava/lang/String;II)Ljava/lang/String;
    .locals 3
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .line 100
    new-array v0, p2, [C

    .line 101
    .local v0, "chars":[C
    add-int v1, p1, p2

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 102
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method


# virtual methods
.method public addSymbol(Ljava/lang/String;III)Ljava/lang/String;
    .locals 5
    .param p1, "buffer"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "hash"    # I

    .line 77
    iget v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->indexMask:I

    and-int/2addr v0, p4

    .line 79
    .local v0, "bucket":I
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols:[Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    aget-object v1, v1, v0

    .line 80
    .local v1, "entry":Lcom/alibaba/fastjson/parser/SymbolTable$Entry;
    if-eqz v1, :cond_1

    .line 81
    iget v2, v1, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->hashCode:I

    if-ne p4, v2, :cond_0

    iget-object v2, v1, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->chars:[C

    array-length v2, v2

    if-ne p3, v2, :cond_0

    iget-object v2, v1, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->value:Ljava/lang/String;

    const/4 v3, 0x0

    .line 83
    invoke-virtual {p1, p2, v2, v3, p3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    iget-object v2, v1, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->value:Ljava/lang/String;

    return-object v2

    .line 87
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/alibaba/fastjson/parser/SymbolTable;->subString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 90
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne p3, v2, :cond_2

    move-object v2, p1

    goto :goto_0

    .line 92
    :cond_2
    invoke-static {p1, p2, p3}, Lcom/alibaba/fastjson/parser/SymbolTable;->subString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    :goto_0
    nop

    .line 93
    .local v2, "symbol":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 95
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols:[Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    new-instance v4, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    invoke-direct {v4, v2, p4}, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;-><init>(Ljava/lang/String;I)V

    aput-object v4, v3, v0

    .line 96
    return-object v2
.end method

.method public addSymbol([CIII)Ljava/lang/String;
    .locals 6
    .param p1, "buffer"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "hash"    # I

    .line 46
    iget v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->indexMask:I

    and-int/2addr v0, p4

    .line 48
    .local v0, "bucket":I
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols:[Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    aget-object v1, v1, v0

    .line 49
    .local v1, "entry":Lcom/alibaba/fastjson/parser/SymbolTable$Entry;
    if-eqz v1, :cond_4

    .line 50
    const/4 v2, 0x1

    .line 51
    .local v2, "eq":Z
    iget v3, v1, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->hashCode:I

    if-ne p4, v3, :cond_2

    iget-object v3, v1, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->chars:[C

    array-length v3, v3

    if-ne p3, v3, :cond_2

    .line 53
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p3, :cond_1

    .line 54
    add-int v4, p2, v3

    aget-char v4, p1, v4

    iget-object v5, v1, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->chars:[C

    aget-char v5, v5, v3

    if-eq v4, v5, :cond_0

    .line 55
    const/4 v2, 0x0

    .line 56
    goto :goto_1

    .line 53
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v3    # "i":I
    :cond_1
    :goto_1
    goto :goto_2

    .line 60
    :cond_2
    const/4 v2, 0x0

    .line 63
    :goto_2
    if-eqz v2, :cond_3

    .line 64
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->value:Ljava/lang/String;

    return-object v3

    .line 66
    :cond_3
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    return-object v3

    .line 70
    .end local v2    # "eq":Z
    :cond_4
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "strVal":Ljava/lang/String;
    new-instance v3, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    invoke-direct {v3, v2, p4}, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;-><init>(Ljava/lang/String;I)V

    move-object v1, v3

    .line 72
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols:[Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    aput-object v1, v3, v0

    .line 73
    return-object v2
.end method

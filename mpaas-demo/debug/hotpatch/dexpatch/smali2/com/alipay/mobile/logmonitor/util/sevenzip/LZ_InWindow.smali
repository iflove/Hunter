.class public Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;
.super Ljava/lang/Object;
.source "LZ_InWindow.java"


# instance fields
.field public m:[B

.field n:Ljava/io/InputStream;

.field o:I

.field p:Z

.field q:I

.field public r:I

.field public s:I

.field public t:I

.field u:I

.field v:I

.field public w:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private e()V
    .locals 5

    .line 26
    iget v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->r:I

    iget v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->t:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->u:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    .line 28
    .local v2, "offset":I
    move v2, v1

    if-lez v1, :cond_0

    .line 29
    add-int/lit8 v2, v2, -0x1

    .line 31
    :cond_0
    iget v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->w:I

    add-int/2addr v0, v1

    sub-int/2addr v0, v2

    .line 34
    .local v0, "numBytes":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 35
    iget-object v3, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->m:[B

    add-int v4, v2, v1

    aget-byte v4, v3, v4

    aput-byte v4, v3, v1

    .line 34
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 36
    .end local v1    # "i":I
    :cond_1
    iget v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->r:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->r:I

    .line 37
    return-void
.end method

.method private f()V
    .locals 6

    .line 41
    iget-boolean v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->p:Z

    if-eqz v0, :cond_0

    .line 42
    return-void

    .line 41
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 45
    :goto_0
    iget v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->r:I

    rsub-int/lit8 v3, v2, 0x0

    iget v4, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->s:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->w:I

    sub-int/2addr v3, v4

    .line 46
    .local v0, "size":I
    move v0, v3

    if-nez v3, :cond_1

    .line 47
    return-void

    .line 48
    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->n:Ljava/io/InputStream;

    iget-object v5, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->m:[B

    add-int/2addr v2, v4

    invoke-virtual {v3, v5, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 49
    .local v1, "numReadBytes":I
    move v1, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 51
    iget v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->w:I

    iput v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->o:I

    .line 52
    iget v3, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->r:I

    add-int/2addr v2, v3

    .line 53
    iget v4, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->q:I

    if-le v2, v4, :cond_2

    .line 54
    sub-int/2addr v4, v3

    iput v4, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->o:I

    .line 56
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->p:Z

    .line 57
    return-void

    .line 59
    :cond_3
    iget v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->w:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->w:I

    .line 60
    iget v3, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->t:I

    iget v4, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->v:I

    add-int/2addr v3, v4

    if-lt v2, v3, :cond_4

    .line 61
    sub-int/2addr v2, v4

    iput v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->o:I

    .line 62
    .end local v0    # "size":I
    .end local v1    # "numReadBytes":I
    :cond_4
    goto :goto_0
.end method

.method private g()V
    .locals 1

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->m:[B

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->r:I

    .line 87
    iput v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->t:I

    .line 88
    iput v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->w:I

    .line 89
    iput-boolean v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->p:Z

    .line 90
    invoke-direct {p0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->f()V

    .line 91
    return-void
.end method

.method public final a(III)V
    .locals 2
    .param p1, "keepSizeBefore"    # I
    .param p2, "keepSizeAfter"    # I
    .param p3, "keepSizeReserv"    # I

    .line 69
    iput p1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->u:I

    .line 70
    iput p2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->v:I

    .line 71
    add-int v0, p1, p2

    add-int/2addr v0, p3

    .line 72
    .local v0, "blockSize":I
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->m:[B

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->s:I

    if-eq v1, v0, :cond_1

    .line 74
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->g()V

    .line 75
    iput v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->s:I

    .line 76
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->m:[B

    .line 78
    :cond_1
    iget v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->s:I

    sub-int/2addr v1, p2

    iput v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->q:I

    .line 79
    return-void
.end method

.method public final a(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/InputStream;

    .line 81
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->n:Ljava/io/InputStream;

    return-void
.end method

.method public final b(III)I
    .locals 5
    .param p1, "index"    # I
    .param p2, "distance"    # I
    .param p3, "limit"    # I

    .line 110
    iget-boolean v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->p:Z

    if-eqz v0, :cond_0

    .line 111
    iget v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->t:I

    add-int v1, v0, p1

    add-int/2addr v1, p3

    iget v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->w:I

    if-le v1, v2, :cond_0

    .line 112
    add-int/2addr v0, p1

    sub-int p3, v2, v0

    .line 113
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 115
    iget v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->r:I

    iget v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->t:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    .line 118
    .local v0, "pby":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_1

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->m:[B

    add-int v3, v0, v1

    aget-byte v3, v2, v3

    add-int v4, v0, v1

    sub-int/2addr v4, p2

    aget-byte v2, v2, v4

    if-ne v3, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    :cond_1
    return v1
.end method

.method public b()V
    .locals 2

    .line 95
    iget v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->t:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->t:I

    .line 96
    iget v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->o:I

    if-le v0, v1, :cond_1

    .line 98
    iget v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->r:I

    add-int/2addr v1, v0

    .line 99
    iget v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->q:I

    if-le v1, v0, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->e()V

    .line 101
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->f()V

    .line 103
    :cond_1
    return-void
.end method

.method public final c(I)B
    .locals 3
    .param p1, "index"    # I

    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->m:[B

    iget v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->r:I

    iget v2, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->t:I

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    return v0
.end method

.method public final c()V
    .locals 1

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->n:Ljava/io/InputStream;

    return-void
.end method

.method public final d()I
    .locals 2

    .line 122
    iget v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->w:I

    iget v1, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->t:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final d(I)V
    .locals 1
    .param p1, "subValue"    # I

    .line 126
    iget v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->r:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->r:I

    .line 127
    iget v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->o:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->o:I

    .line 128
    iget v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->t:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->t:I

    .line 129
    iget v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->w:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/alipay/mobile/logmonitor/util/sevenzip/LZ_InWindow;->w:I

    .line 130
    return-void
.end method

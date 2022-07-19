.class public Lcom/alipay/dexpatch/patch/DexInfo;
.super Ljava/lang/Object;
.source "DexInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/alipay/dexpatch/patch/DexInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final TYPE_PATCH:I = 0x1

.field public static final TYPE_SOURCE:I


# instance fields
.field public entryName:Ljava/lang/String;

.field public newEntryName:Ljava/lang/String;

.field public type:I

.field public zipEntry:Ljava/util/zip/ZipEntry;

.field public zipFile:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/dexpatch/patch/DexInfo;->type:I

    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 2

    const-string v0, ""

    :try_start_0
    const-string v1, "classes"

    .line 1
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v1, ".dex"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public compareTo(Lcom/alipay/dexpatch/patch/DexInfo;)I
    .locals 4

    .line 2
    iget v0, p0, Lcom/alipay/dexpatch/patch/DexInfo;->type:I

    iget v1, p1, Lcom/alipay/dexpatch/patch/DexInfo;->type:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    return v3

    :cond_0
    return v2

    :cond_1
    if-ne v0, v3, :cond_2

    const/4 p1, 0x0

    return p1

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/alipay/dexpatch/patch/DexInfo;->entryName:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/dexpatch/patch/DexInfo;->a(Ljava/lang/String;)I

    move-result v0

    .line 15
    iget-object p1, p1, Lcom/alipay/dexpatch/patch/DexInfo;->entryName:Ljava/lang/String;

    invoke-static {p1}, Lcom/alipay/dexpatch/patch/DexInfo;->a(Ljava/lang/String;)I

    move-result p1

    if-le v0, p1, :cond_3

    return v3

    :cond_3
    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/alipay/dexpatch/patch/DexInfo;

    invoke-virtual {p0, p1}, Lcom/alipay/dexpatch/patch/DexInfo;->compareTo(Lcom/alipay/dexpatch/patch/DexInfo;)I

    move-result p1

    return p1
.end method

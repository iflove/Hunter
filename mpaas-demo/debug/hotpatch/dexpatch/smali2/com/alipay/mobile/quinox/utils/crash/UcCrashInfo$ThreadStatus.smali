.class Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo$ThreadStatus;
.super Ljava/lang/Object;
.source "UcCrashInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThreadStatus"
.end annotation


# instance fields
.field private final stackTrace:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sysTid:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo$ThreadStatus;->sysTid:Ljava/lang/String;

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo$ThreadStatus;->stackTrace:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo$1;

    .line 251
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo$ThreadStatus;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo$ThreadStatus;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo$ThreadStatus;

    .line 251
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo$ThreadStatus;->sysTid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo$ThreadStatus;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo$ThreadStatus;
    .param p1, "x1"    # Ljava/lang/String;

    .line 251
    iput-object p1, p0, Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo$ThreadStatus;->sysTid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo$ThreadStatus;[Ljava/lang/String;I)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo$ThreadStatus;
    .param p1, "x1"    # [Ljava/lang/String;
    .param p2, "x2"    # I

    .line 251
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo$ThreadStatus;->parseStack([Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo$ThreadStatus;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo$ThreadStatus;

    .line 251
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo$ThreadStatus;->stackTrace:Ljava/util/List;

    return-object v0
.end method

.method private parseStack([Ljava/lang/String;I)I
    .locals 6
    .param p1, "lines"    # [Ljava/lang/String;
    .param p2, "startIndex"    # I

    .line 265
    const/4 v0, 0x0

    .line 266
    .local v0, "endIndex":I
    const/4 v1, 0x0

    .line 268
    .local v1, "started":Z
    move v2, p2

    .local v2, "i":I
    const/4 v3, 0x0

    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_2

    .line 269
    move v0, v2

    .line 270
    aget-object v4, p1, v2

    .line 271
    .local v3, "currentLine":Ljava/lang/String;
    move-object v3, v4

    const-string v5, "  at "

    invoke-static {v4, v5}, Lcom/alipay/mobile/quinox/utils/StringUtils;->startsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 272
    iget-object v4, p0, Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo$ThreadStatus;->stackTrace:Ljava/util/List;

    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/StringUtils;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    const/4 v1, 0x1

    goto :goto_1

    .line 276
    :cond_0
    if-eqz v1, :cond_1

    .line 277
    const-string v4, "  - waiting on "

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/utils/StringUtils;->startsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 278
    const-string v4, "  - locked "

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/utils/StringUtils;->startsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 283
    :cond_1
    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 287
    const-string v4, "sysTid"

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/utils/StringUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 288
    const-string v4, "(no managed stack frames)"

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/utils/StringUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 289
    const-string v4, "--- --- --- --- ---"

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/utils/StringUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 268
    .end local v3    # "currentLine":Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 295
    .end local v2    # "i":I
    :cond_2
    return v0
.end method

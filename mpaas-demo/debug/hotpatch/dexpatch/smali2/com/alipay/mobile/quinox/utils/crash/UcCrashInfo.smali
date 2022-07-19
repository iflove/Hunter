.class public Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo;
.super Ljava/lang/Object;
.source "UcCrashInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo$ThreadStatus;
    }
.end annotation


# static fields
.field private static final NEXT_LINE:Ljava/lang/String; = "\n"

.field private static final PID_LINE_SUFFIX:Ljava/lang/String; = " <<<"

.field private static final PID_PREFIX:Ljava/lang/String; = "pid: "

.field private static final TAG:Ljava/lang/String; = "UcCrashInfo"

.field private static final TID_PREFIX:Ljava/lang/String; = "tid: "

.field private static final TID_SUFFIX:Ljava/lang/String; = "  >>> "


# instance fields
.field private final mCrashThreadJavaStack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCrashTime:Ljava/lang/String;

.field private mLastPatchBundle:Ljava/lang/String;

.field private mLastPatchLoadTime:Ljava/lang/String;

.field private final mThreadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo$ThreadStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mTid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo;->mTid:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo;->mCrashTime:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo;->mLastPatchBundle:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo;->mLastPatchLoadTime:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo;->mThreadList:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo;->mCrashThreadJavaStack:Ljava/util/List;

    return-void
.end method

.method private getFirstLineFits([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p1, "lines"    # [Ljava/lang/String;
    .param p2, "start"    # Ljava/lang/String;
    .param p3, "end"    # Ljava/lang/String;
    .param p4, "contains"    # Ljava/lang/String;
    .param p5, "startIndex"    # I

    .line 195
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-le p5, v1, :cond_0

    goto :goto_1

    .line 199
    :cond_0
    invoke-static {p2}, Lcom/alipay/mobile/quinox/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 200
    .local v1, "checkStart":Z
    invoke-static {p3}, Lcom/alipay/mobile/quinox/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 201
    .local v2, "checkEnd":Z
    invoke-static {p4}, Lcom/alipay/mobile/quinox/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 203
    .local v3, "checkContains":Z
    move v4, p5

    .local v4, "i":I
    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_5

    .line 204
    const/4 v5, 0x1

    .line 205
    .local v5, "fits":Z
    if-eqz v1, :cond_1

    aget-object v6, p1, v4

    invoke-static {v6, p2}, Lcom/alipay/mobile/quinox/utils/StringUtils;->startsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 206
    const/4 v5, 0x0

    .line 208
    :cond_1
    if-eqz v2, :cond_2

    aget-object v6, p1, v4

    invoke-static {v6, p3}, Lcom/alipay/mobile/quinox/utils/StringUtils;->endsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 209
    const/4 v5, 0x0

    .line 211
    :cond_2
    if-eqz v3, :cond_3

    aget-object v6, p1, v4

    invoke-static {v6, p4}, Lcom/alipay/mobile/quinox/utils/StringUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 212
    const/4 v5, 0x0

    .line 214
    :cond_3
    if-eqz v5, :cond_4

    .line 215
    aget-object v0, p1, v4

    return-object v0

    .line 203
    .end local v5    # "fits":Z
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 219
    .end local v4    # "i":I
    :cond_5
    return-object v0

    .line 196
    .end local v1    # "checkStart":Z
    .end local v2    # "checkEnd":Z
    .end local v3    # "checkContains":Z
    :cond_6
    :goto_1
    return-object v0
.end method

.method private getFirstLineIndexFits([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 7
    .param p1, "lines"    # [Ljava/lang/String;
    .param p2, "start"    # Ljava/lang/String;
    .param p3, "end"    # Ljava/lang/String;
    .param p4, "contains"    # Ljava/lang/String;
    .param p5, "startIndex"    # I

    .line 224
    const/4 v0, -0x1

    if-eqz p1, :cond_6

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-le p5, v1, :cond_0

    goto :goto_1

    .line 228
    :cond_0
    invoke-static {p2}, Lcom/alipay/mobile/quinox/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 229
    .local v1, "checkStart":Z
    invoke-static {p3}, Lcom/alipay/mobile/quinox/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 230
    .local v2, "checkEnd":Z
    invoke-static {p4}, Lcom/alipay/mobile/quinox/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 232
    .local v3, "checkContains":Z
    move v4, p5

    .local v4, "i":I
    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_5

    .line 233
    const/4 v5, 0x1

    .line 234
    .local v5, "fits":Z
    if-eqz v1, :cond_1

    aget-object v6, p1, v4

    invoke-static {v6, p2}, Lcom/alipay/mobile/quinox/utils/StringUtils;->startsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 235
    const/4 v5, 0x0

    .line 237
    :cond_1
    if-eqz v2, :cond_2

    aget-object v6, p1, v4

    invoke-static {v6, p3}, Lcom/alipay/mobile/quinox/utils/StringUtils;->endsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 238
    const/4 v5, 0x0

    .line 240
    :cond_2
    if-eqz v3, :cond_3

    aget-object v6, p1, v4

    invoke-static {v6, p4}, Lcom/alipay/mobile/quinox/utils/StringUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 241
    const/4 v5, 0x0

    .line 243
    :cond_3
    if-eqz v5, :cond_4

    .line 244
    return v4

    .line 232
    .end local v5    # "fits":Z
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 248
    .end local v4    # "i":I
    :cond_5
    return v0

    .line 225
    .end local v1    # "checkStart":Z
    .end local v2    # "checkEnd":Z
    .end local v3    # "checkContains":Z
    :cond_6
    :goto_1
    return v0
.end method

.method private innerParse(Ljava/lang/String;)V
    .locals 8

    .line 53
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    return-void

    .line 58
    :cond_0
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 62
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v3, "pid: "

    const-string v4, " <<<"

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo;->getFirstLineFits([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 64
    const-string v1, "tid: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/StringUtils;->indexOf(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 65
    const-string v2, "  >>> "

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/StringUtils;->indexOf(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 66
    if-ltz v1, :cond_1

    if-le v2, v1, :cond_1

    .line 67
    add-int/lit8 v1, v1, 0x5

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/quinox/utils/StringUtils;->substring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo;->mTid:Ljava/lang/String;

    .line 74
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  | sysTid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo;->mTid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 75
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo;->getFirstLineIndexFits([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 77
    const/4 v7, 0x1

    if-ltz v0, :cond_2

    .line 78
    new-instance v1, Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo$ThreadStatus;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo$ThreadStatus;-><init>(Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo$1;)V

    .line 79
    iget-object v2, p0, Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo;->mTid:Ljava/lang/String;

    # setter for: Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo$ThreadStatus;->sysTid:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo$ThreadStatus;->access$102(Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo$ThreadStatus;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    add-int/2addr v0, v7

    # invokes: Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo$ThreadStatus;->parseStack([Ljava/lang/String;I)I
    invoke-static {v1, p1, v0}, Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo$ThreadStatus;->access$200(Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo$ThreadStatus;[Ljava/lang/String;I)I

    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo;->mThreadList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v5, "Crash thread java stack trace:"

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo;->getFirstLineIndexFits([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 89
    if-ltz v0, :cond_4

    .line 90
    const/4 v1, 0x0

    .line 92
    add-int/2addr v0, v7

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_4

    .line 93
    aget-object v2, p1, v0

    .line 94
    const-string v3, "  at "

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/StringUtils;->startsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 95
    iget-object v1, p0, Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo;->mCrashThreadJavaStack:Ljava/util/List;

    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/StringUtils;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    const/4 v1, 0x1

    goto :goto_1

    .line 99
    :cond_3
    if-nez v1, :cond_4

    .line 103
    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 107
    const-string v3, "sysTid"

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/StringUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 108
    const-string v3, "(no managed stack frames)"

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/StringUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 109
    const-string v3, "--- --- --- --- ---"

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/StringUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 92
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_4
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v3, "lastPatchLoadTime"

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo;->getFirstLineFits([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v7, ""

    if-nez v1, :cond_5

    .line 120
    const-string v1, "lastPatchLoadTime:"

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo;->mLastPatchLoadTime:Ljava/lang/String;

    .line 125
    :cond_5
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v3, "lastPatchLoaded"

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo;->getFirstLineFits([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 127
    const-string v1, "lastPatchLoaded:"

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo;->mLastPatchBundle:Ljava/lang/String;

    .line 132
    :cond_6
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v3, "Basic Information"

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo;->getFirstLineFits([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 133
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 134
    const-string v0, "time:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 135
    if-lez v0, :cond_8

    .line 136
    add-int/lit8 v1, v0, 0x4

    const-string v2, "/"

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 137
    const/4 v3, -0x1

    if-ne v2, v3, :cond_7

    .line 138
    const-string v2, "\'"

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 140
    :cond_7
    if-le v2, v0, :cond_8

    .line 141
    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo;->mCrashTime:Ljava/lang/String;

    .line 146
    :cond_8
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo;
    .locals 3
    .param p0, "crashInfo"    # Ljava/lang/String;

    .line 43
    new-instance v0, Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo;-><init>()V

    .line 45
    .local v0, "rCrashInfo":Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo;
    :try_start_0
    invoke-direct {v0, p0}, Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo;->innerParse(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    goto :goto_0

    .line 46
    :catchall_0
    move-exception v1

    .line 47
    .local v1, "tr":Ljava/lang/Throwable;
    const-string v2, "UcCrashInfo"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    .end local v1    # "tr":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method


# virtual methods
.method public isAndFixCrash()Z
    .locals 6

    const-string v0, "UcCrashInfo"

    .line 149
    const/4 v1, 0x0

    .line 152
    .local v1, "isAndFixCrash":Z
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo;->mThreadList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo$ThreadStatus;

    .line 153
    .local v3, "threadStatus":Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo$ThreadStatus;
    move-object v3, v4

    # getter for: Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo$ThreadStatus;->sysTid:Ljava/lang/String;
    invoke-static {v4}, Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo$ThreadStatus;->access$100(Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo$ThreadStatus;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo;->mTid:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/alipay/mobile/quinox/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 154
    # getter for: Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo$ThreadStatus;->stackTrace:Ljava/util/List;
    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo$ThreadStatus;->access$300(Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo$ThreadStatus;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo;->parse(Ljava/util/List;)Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo;->isAndFixCrash()Z

    move-result v4

    move v1, v4

    .line 156
    .end local v3    # "threadStatus":Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo$ThreadStatus;
    :cond_0
    goto :goto_0

    .line 157
    :cond_1
    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo;->mCrashThreadJavaStack:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 158
    iget-object v2, p0, Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo;->mCrashThreadJavaStack:Ljava/util/List;

    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo;->parse(Ljava/util/List;)Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo;->isAndFixCrash()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    .line 162
    :cond_2
    goto :goto_1

    .line 160
    :catchall_0
    move-exception v2

    .line 161
    .local v2, "tr":Ljava/lang/Throwable;
    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    .end local v2    # "tr":Ljava/lang/Throwable;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isAndFixCrash:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return v1
.end method

.method public isCrashAfterHotPatch(J)Z
    .locals 10
    .param p1, "delayInMillis"    # J

    const-string v0, "UcCrashInfo"

    .line 169
    const/4 v1, 0x0

    .line 171
    .local v1, "isCrashAfterHotPatch":Z
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo;->mCrashTime:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo;->mLastPatchLoadTime:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mCrashTime:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo;->mCrashTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mLastPatchLoadTime:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo;->mLastPatchLoadTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mLastPatchBundle:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo;->mLastPatchBundle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v3, 0x0

    .line 176
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    move-object v3, v2

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 177
    iget-object v2, p0, Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo;->mCrashTime:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 178
    .local v4, "crashTime":J
    iget-object v2, p0, Lcom/alipay/mobile/quinox/utils/crash/UcCrashInfo;->mLastPatchLoadTime:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 179
    .local v6, "lastPatchLoadTime":J
    const-wide/16 v8, 0x0

    cmp-long v2, v4, v8

    if-lez v2, :cond_0

    cmp-long v2, v6, v8

    if-lez v2, :cond_0

    .line 180
    sub-long v8, v4, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v2, v8, p1

    if-gez v2, :cond_0

    .line 181
    const/4 v1, 0x1

    .line 187
    .end local v3    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v4    # "crashTime":J
    .end local v6    # "lastPatchLoadTime":J
    :cond_0
    goto :goto_0

    .line 185
    :catchall_0
    move-exception v2

    .line 186
    .local v2, "tr":Ljava/lang/Throwable;
    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 188
    .end local v2    # "tr":Ljava/lang/Throwable;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isCrashAfterHotPatch:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return v1
.end method

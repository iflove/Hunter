.class public Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo;
.super Ljava/lang/Object;
.source "JavaCrashInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;,
        Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;
    }
.end annotation


# static fields
.field private static final ANDFIX_NAME_IDENTITY:Ljava/lang/String; = "CF"

.field private static final ANDFIX_NAME_SPLIT:Ljava/lang/String; = "_"

.field private static final DEXPATCH_NCLASSLOADER_NAME:Ljava/lang/String; = "NClassLoader"

.field private static final DOT:Ljava/lang/String; = "."

.field private static final INSTANT_RUN_PATCHES_INFO_IMPL_SUFFIX:Ljava/lang/String; = "PatchesInfoImpl"

.field private static final INSTANT_RUN_PATCH_CONTROL_SUFFIX:Ljava/lang/String; = "PatchControl"

.field private static final INSTANT_RUN_PATCH_SUFFIX:Ljava/lang/String; = "Patch"

.field private static final PATCH_TIME_E:J = 0x145f680b000L

.field private static final PATCH_TIME_L:J = 0x174876e8000L

.field private static final TAG:Ljava/lang/String; = "JavaCrashInfo"


# instance fields
.field private crashItemHead:Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo;->crashItemHead:Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;

    return-void
.end method

.method private innerParse(Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "crashInfo"    # Ljava/lang/Throwable;

    .line 68
    new-instance v0, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;

    invoke-direct {v0}, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 69
    .local v2, "item":Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;
    move-object v2, v0

    sget-object v3, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;->THROWABLE:Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;

    # setter for: Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;->itemType:Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;
    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;->access$002(Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;)Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;

    .line 70
    iput-object v2, p0, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo;->crashItemHead:Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;

    .line 72
    move-object v0, p1

    move-object v3, v2

    move-object v2, v1

    .line 73
    .end local v2    # "item":Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;
    .local v0, "target":Ljava/lang/Throwable;
    .local v3, "item":Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;
    :goto_0
    if-eqz v0, :cond_2

    .line 74
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 75
    .local v1, "elements":[Ljava/lang/StackTraceElement;
    move-object v1, v4

    if-eqz v4, :cond_0

    .line 76
    # getter for: Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;->stackTraceElements:Ljava/util/List;
    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;->access$200(Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;)Ljava/util/List;

    move-result-object v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 78
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    .line 80
    move-object v0, v4

    if-eqz v4, :cond_1

    .line 81
    new-instance v4, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;

    invoke-direct {v4}, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;-><init>()V

    .line 82
    .local v2, "itemTemp":Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;
    move-object v2, v4

    sget-object v5, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;->THROWABLE:Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;

    # setter for: Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;->itemType:Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;
    invoke-static {v4, v5}, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;->access$002(Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;)Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;

    .line 83
    # setter for: Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;->causeBy:Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;
    invoke-static {v3, v2}, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;->access$302(Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;)Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;

    .line 84
    move-object v3, v2

    .line 86
    .end local v1    # "elements":[Ljava/lang/StackTraceElement;
    .end local v2    # "itemTemp":Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;
    :cond_1
    goto :goto_0

    .line 87
    :cond_2
    return-void
.end method

.method private innerParse(Ljava/util/List;)V
    .locals 3
    .param p1, "javaStack"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 58
    new-instance v0, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;

    invoke-direct {v0}, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;-><init>()V

    const/4 v1, 0x0

    .line 59
    .local v1, "item":Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;
    move-object v1, v0

    sget-object v2, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;->LINES:Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;

    # setter for: Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;->itemType:Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;
    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;->access$002(Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;)Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;

    .line 60
    iput-object v1, p0, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo;->crashItemHead:Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;

    .line 62
    if-eqz p1, :cond_0

    .line 63
    # getter for: Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;->backStackTrace:Ljava/util/List;
    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;->access$100(Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 65
    :cond_0
    return-void
.end method

.method public static parse(Ljava/lang/Throwable;)Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo;
    .locals 3
    .param p0, "crashInfo"    # Ljava/lang/Throwable;

    .line 38
    new-instance v0, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo;-><init>()V

    .line 40
    .local v0, "rCrashInfo":Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo;
    :try_start_0
    invoke-direct {v0, p0}, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo;->innerParse(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v1

    .line 42
    .local v1, "tr":Ljava/lang/Throwable;
    const-string v2, "JavaCrashInfo"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    .end local v1    # "tr":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method

.method public static parse(Ljava/util/List;)Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo;
    .locals 3
    .param p0, "stackTrace"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo;"
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo;-><init>()V

    .line 50
    .local v0, "rCrashInfo":Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo;
    :try_start_0
    invoke-direct {v0, p0}, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo;->innerParse(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    goto :goto_0

    .line 51
    :catchall_0
    move-exception v1

    .line 52
    .local v1, "tr":Ljava/lang/Throwable;
    const-string v2, "JavaCrashInfo"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    .end local v1    # "tr":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method


# virtual methods
.method public isAndFixCrash()Z
    .locals 24

    .line 95
    move-object/from16 v1, p0

    const-string v2, "("

    const-string v3, "."

    const-string v4, "JavaCrashInfo"

    .line 97
    :try_start_0
    const-string v0, "isAndFixCrash?"

    invoke-static {v4, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, v1, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo;->crashItemHead:Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v7, 0x0

    .line 99
    :goto_0
    if-eqz v0, :cond_9

    if-nez v7, :cond_9

    .line 100
    :try_start_1
    # getter for: Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;->itemType:Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;->access$000(Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;)Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;

    move-result-object v8

    sget-object v9, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;->THROWABLE:Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v12, "isAndFixCrash got timeStr :"

    const-string v14, "CF"

    const-string v5, "_"

    const-string v10, "isAndFixCrash got simpleClassName :"

    const-string v11, "isAndFixCrash got _CF_ :"

    const-string v13, "_CF_"

    if-ne v8, v9, :cond_1

    .line 101
    :try_start_2
    const-string v8, "isAndFixCrash itemType THROWABLE"

    invoke-static {v4, v8}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    # getter for: Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;->stackTraceElements:Ljava/util/List;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;->access$200(Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/StackTraceElement;

    .line 103
    invoke-virtual {v9}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v9

    .line 104
    invoke-virtual {v9, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 105
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v9, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 107
    if-ltz v6, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v6, v15, :cond_0

    .line 108
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v9, v6, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 109
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v6, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 111
    array-length v9, v6

    const/4 v15, 0x3

    if-ne v9, v15, :cond_0

    const/4 v9, 0x1

    aget-object v15, v6, v9

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 112
    const/4 v9, 0x2

    aget-object v6, v6, v9

    .line 113
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    .line 115
    const-wide v16, 0x145f680b000L

    cmp-long v6, v20, v16

    if-lez v6, :cond_0

    const-wide v22, 0x174876e8000L

    cmp-long v6, v20, v22

    if-gez v6, :cond_0

    .line 117
    const-string v6, "isAndFixCrash!"

    invoke-static {v4, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    nop

    .line 119
    const/4 v7, 0x1

    goto :goto_2

    .line 124
    :cond_0
    goto/16 :goto_1

    .line 126
    :cond_1
    :goto_2
    # getter for: Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;->itemType:Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;->access$000(Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;)Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;

    move-result-object v6

    sget-object v8, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;->LINES:Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;

    if-ne v6, v8, :cond_8

    .line 127
    const-string v6, "isAndFixCrash itemType LINES"

    invoke-static {v4, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    # getter for: Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;->backStackTrace:Ljava/util/List;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;->access$100(Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 129
    invoke-virtual {v8, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 130
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v8, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    .line 133
    if-ltz v9, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v9, v15, :cond_2

    .line 134
    const/4 v15, 0x0

    invoke-virtual {v8, v15, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 137
    :cond_2
    invoke-virtual {v8, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    .line 138
    if-ltz v9, :cond_3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v9, v15, :cond_3

    .line 139
    const/4 v15, 0x0

    invoke-virtual {v8, v15, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 141
    :cond_3
    invoke-virtual {v8, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    .line 142
    if-ltz v9, :cond_5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v9, v15, :cond_5

    .line 143
    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v8, v9, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 144
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v8, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 146
    array-length v9, v8

    const/4 v15, 0x3

    if-ne v9, v15, :cond_4

    const/4 v9, 0x1

    aget-object v15, v8, v9

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 147
    const/4 v15, 0x2

    aget-object v8, v8, v15

    .line 148
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 150
    const-wide v16, 0x145f680b000L

    cmp-long v18, v8, v16

    if-lez v18, :cond_7

    const-wide v20, 0x174876e8000L

    cmp-long v18, v8, v20

    if-gez v18, :cond_7

    .line 152
    const-string v5, "isAndFixCrash!"

    invoke-static {v4, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    nop

    .line 154
    const/4 v7, 0x1

    goto :goto_5

    .line 146
    :cond_4
    const/4 v15, 0x2

    const-wide v16, 0x145f680b000L

    goto :goto_4

    .line 142
    :cond_5
    const/4 v15, 0x2

    const-wide v16, 0x145f680b000L

    goto :goto_4

    .line 129
    :cond_6
    const/4 v15, 0x2

    const-wide v16, 0x145f680b000L

    .line 159
    :cond_7
    :goto_4
    goto/16 :goto_3

    .line 162
    :cond_8
    :goto_5
    # getter for: Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;->causeBy:Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;->access$300(Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;)Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 164
    :catchall_0
    move-exception v0

    goto :goto_6

    .line 166
    :cond_9
    goto :goto_7

    .line 164
    :catchall_1
    move-exception v0

    const/4 v7, 0x0

    .line 165
    :goto_6
    invoke-static {v4, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 168
    :goto_7
    :try_start_3
    const-string v0, "isDexPatchCrash?"

    invoke-static {v4, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, v1, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo;->crashItemHead:Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move v9, v7

    .line 170
    :goto_8
    if-eqz v0, :cond_e

    if-nez v9, :cond_e

    .line 171
    :try_start_4
    # getter for: Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;->itemType:Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;->access$000(Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;)Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;

    move-result-object v5

    sget-object v6, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;->THROWABLE:Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const-string v7, "isDexPatchCrash got :"

    const-string v8, "NClassLoader"

    if-ne v5, v6, :cond_b

    .line 172
    :try_start_5
    const-string v5, "isDexPatchCrash itemType THROWABLE"

    invoke-static {v4, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    # getter for: Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;->stackTraceElements:Ljava/util/List;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;->access$200(Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/StackTraceElement;

    .line 174
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 175
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 176
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    nop

    .line 178
    const/4 v9, 0x1

    goto :goto_a

    .line 180
    :cond_a
    goto :goto_9

    .line 182
    :cond_b
    :goto_a
    # getter for: Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;->itemType:Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;->access$000(Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;)Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;

    move-result-object v5

    sget-object v6, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;->LINES:Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;

    if-ne v5, v6, :cond_d

    .line 183
    const-string v5, "isDexPatchCrash itemType LINES"

    invoke-static {v4, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    # getter for: Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;->backStackTrace:Ljava/util/List;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;->access$100(Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 185
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 186
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    nop

    .line 188
    const/4 v9, 0x1

    goto :goto_c

    .line 190
    :cond_c
    goto :goto_b

    .line 193
    :cond_d
    :goto_c
    # getter for: Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;->causeBy:Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;->access$300(Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;)Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/16 :goto_8

    .line 195
    :catchall_2
    move-exception v0

    move v7, v9

    goto :goto_d

    .line 197
    :cond_e
    goto :goto_e

    .line 195
    :catchall_3
    move-exception v0

    .line 196
    :goto_d
    invoke-static {v4, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v9, v7

    .line 199
    :goto_e
    :try_start_6
    const-string v0, "isInstantRunCrash?"

    invoke-static {v4, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v0, v1, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo;->crashItemHead:Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;

    .line 201
    :goto_f
    if-eqz v0, :cond_1a

    if-nez v9, :cond_1a

    .line 202
    # getter for: Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;->itemType:Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;->access$000(Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;)Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;

    move-result-object v5

    sget-object v6, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;->THROWABLE:Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    const-string v7, "isInstantRunCrash got PatchesInfoImpl :"

    const-string v8, "isInstantRunCrash got PatchControl :"

    const-string v10, "isInstantRunCrash got Patch :"

    const-string v11, "PatchesInfoImpl"

    const-string v12, "PatchControl"

    const-string v13, "Patch"

    if-ne v5, v6, :cond_12

    .line 203
    :try_start_7
    const-string v5, "isInstantRunCrash itemType THROWABLE"

    invoke-static {v4, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    # getter for: Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;->stackTraceElements:Ljava/util/List;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;->access$200(Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/StackTraceElement;

    .line 205
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 206
    invoke-virtual {v6, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 207
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    nop

    .line 209
    const/4 v9, 0x1

    goto :goto_11

    .line 210
    :cond_f
    invoke-virtual {v6, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 211
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    nop

    .line 213
    const/4 v9, 0x1

    goto :goto_11

    .line 214
    :cond_10
    invoke-virtual {v6, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 215
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    nop

    .line 217
    const/4 v9, 0x1

    goto :goto_11

    .line 219
    :cond_11
    goto :goto_10

    .line 221
    :cond_12
    :goto_11
    # getter for: Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;->itemType:Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;->access$000(Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;)Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;

    move-result-object v5

    sget-object v6, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;->LINES:Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItemType;

    if-ne v5, v6, :cond_19

    .line 222
    const-string v5, "isInstantRunCrash itemType LINES"

    invoke-static {v4, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    # getter for: Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;->backStackTrace:Ljava/util/List;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;->access$100(Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 224
    invoke-virtual {v6, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_13

    .line 225
    invoke-virtual {v6, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_13

    .line 226
    invoke-virtual {v6, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_18

    .line 227
    :cond_13
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "isInstantRunCrash got relevant line :"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-virtual {v6, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    .line 230
    if-ltz v14, :cond_14

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v14, v15, :cond_14

    .line 231
    const/4 v15, 0x0

    invoke-virtual {v6, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 234
    :cond_14
    invoke-virtual {v6, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    .line 235
    if-ltz v14, :cond_15

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v14, v15, :cond_15

    .line 236
    const/4 v15, 0x0

    invoke-virtual {v6, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_13

    .line 235
    :cond_15
    const/4 v15, 0x0

    .line 238
    :goto_13
    invoke-virtual {v6, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    .line 239
    if-ltz v14, :cond_18

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v14, v15, :cond_18

    .line 240
    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v6, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 241
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "isInstantRunCrash got simpleClassName :"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual {v6, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_16

    .line 243
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    nop

    .line 245
    const/4 v9, 0x1

    goto :goto_14

    .line 246
    :cond_16
    invoke-virtual {v6, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_17

    .line 247
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    nop

    .line 249
    const/4 v9, 0x1

    goto :goto_14

    .line 250
    :cond_17
    invoke-virtual {v6, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_18

    .line 251
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    nop

    .line 253
    const/4 v9, 0x1

    goto :goto_14

    .line 257
    :cond_18
    goto/16 :goto_12

    .line 260
    :cond_19
    :goto_14
    # getter for: Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;->causeBy:Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;->access$300(Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;)Lcom/alipay/mobile/quinox/utils/crash/JavaCrashInfo$JCIItem;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto/16 :goto_f

    .line 264
    :cond_1a
    goto :goto_15

    .line 262
    :catchall_4
    move-exception v0

    .line 263
    invoke-static {v4, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 265
    :goto_15
    if-nez v9, :cond_1b

    .line 266
    const-string v0, "isNotAndFixCrash and isNotDexPatchCrash and isNotInstantRunCrash.."

    invoke-static {v4, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :cond_1b
    return v9
.end method

.method public isCrashAfterHotPatch(J)Z
    .locals 9
    .param p1, "delayInMillis"    # J

    .line 272
    const-string v0, "JavaCrashInfo"

    const/4 v1, 0x0

    .line 274
    .local v1, "isCrashAfterHotPatch":Z
    :try_start_0
    sget-object v2, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastHotPatchLoadBundle:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-wide v2, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastHotPatchLoadTime:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 275
    sget-wide v2, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastJavaCrashTime:J

    .line 276
    .local v2, "crashTime":J
    sget-wide v6, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->sLastHotPatchLoadTime:J

    .line 277
    .local v6, "lastPatchLoadTime":J
    cmp-long v8, v2, v4

    if-lez v8, :cond_0

    cmp-long v8, v6, v4

    if-lez v8, :cond_0

    .line 278
    sub-long v4, v2, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v8, v4, p1

    if-gez v8, :cond_0

    .line 279
    const/4 v1, 0x1

    .line 285
    .end local v2    # "crashTime":J
    .end local v6    # "lastPatchLoadTime":J
    :cond_0
    goto :goto_0

    .line 283
    :catchall_0
    move-exception v2

    .line 284
    .local v2, "tr":Ljava/lang/Throwable;
    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 286
    .end local v2    # "tr":Ljava/lang/Throwable;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isCrashAfterHotPatch:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    return v1
.end method

.class public Lcom/alipay/instantrun/utils/ToolsUtil;
.super Ljava/lang/Object;
.source "ToolsUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLineInfo()Ljava/lang/String;
    .locals 3

    .line 13
    :try_start_0
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 14
    .local v0, "ste":Ljava/lang/StackTraceElement;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " Line:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 15
    .end local v0    # "ste":Ljava/lang/StackTraceElement;
    :catchall_0
    move-exception v0

    .line 16
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v1, "IR.Log"

    invoke-static {v1, v0}, Lcom/alipay/instantrun/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    .end local v0    # "tr":Ljava/lang/Throwable;
    const-string v0, " line:unknown"

    return-object v0
.end method

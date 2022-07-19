.class public Lcom/alipay/mobile/common/rpc/RpcException;
.super Ljava/lang/RuntimeException;
.source "RpcException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/rpc/RpcException$ErrorCode;
    }
.end annotation


# static fields
.field public static final ERROR_SOURCE_CLIENT:I = 0x1

.field public static final ERROR_SOURCE_SERVER:I = 0x2

.field public static final INIT_ALERT:I = -0x64

.field public static final NO_ALERT:I = 0x0

.field public static final TOAST_ALERT:I = 0x1


# instance fields
.field protected alert:I

.field protected errorSource:I

.field protected isBgRpc:Z

.field protected mCode:I

.field protected mControl:Ljava/lang/String;

.field protected mIsControlOwn:Z

.field protected mMsg:Ljava/lang/String;

.field protected mOperationType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/Integer;
    .param p2, "msg"    # Ljava/lang/String;

    .line 104
    invoke-static {p1, p2}, Lcom/alipay/mobile/common/rpc/RpcException;->format(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/rpc/RpcException;->mIsControlOwn:Z

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/rpc/RpcException;->errorSource:I

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/rpc/RpcException;->isBgRpc:Z

    .line 58
    const/16 v0, -0x64

    iput v0, p0, Lcom/alipay/mobile/common/rpc/RpcException;->alert:I

    .line 105
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/common/rpc/RpcException;->mCode:I

    .line 106
    iput-object p2, p0, Lcom/alipay/mobile/common/rpc/RpcException;->mMsg:Ljava/lang/String;

    .line 107
    invoke-virtual {p0}, Lcom/alipay/mobile/common/rpc/RpcException;->setErrorSource()V

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/Integer;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 117
    invoke-direct {p0, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/rpc/RpcException;->mIsControlOwn:Z

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/rpc/RpcException;->errorSource:I

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/rpc/RpcException;->isBgRpc:Z

    .line 58
    const/16 v0, -0x64

    iput v0, p0, Lcom/alipay/mobile/common/rpc/RpcException;->alert:I

    .line 118
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/common/rpc/RpcException;->mCode:I

    .line 119
    iput-object p2, p0, Lcom/alipay/mobile/common/rpc/RpcException;->mMsg:Ljava/lang/String;

    .line 120
    invoke-virtual {p0}, Lcom/alipay/mobile/common/rpc/RpcException;->setErrorSource()V

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/Integer;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 111
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/rpc/RpcException;->mIsControlOwn:Z

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/rpc/RpcException;->errorSource:I

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/rpc/RpcException;->isBgRpc:Z

    .line 58
    const/16 v0, -0x64

    iput v0, p0, Lcom/alipay/mobile/common/rpc/RpcException;->alert:I

    .line 112
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/common/rpc/RpcException;->mCode:I

    .line 113
    invoke-virtual {p0}, Lcom/alipay/mobile/common/rpc/RpcException;->setErrorSource()V

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 124
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/rpc/RpcException;->mIsControlOwn:Z

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/rpc/RpcException;->errorSource:I

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/rpc/RpcException;->isBgRpc:Z

    .line 58
    const/16 v1, -0x64

    iput v1, p0, Lcom/alipay/mobile/common/rpc/RpcException;->alert:I

    .line 125
    iput v0, p0, Lcom/alipay/mobile/common/rpc/RpcException;->mCode:I

    .line 126
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/RpcException;->mMsg:Ljava/lang/String;

    .line 127
    return-void
.end method

.method protected static format(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "code"    # Ljava/lang/Integer;
    .param p1, "message"    # Ljava/lang/String;

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 177
    .local v1, "str":Ljava/lang/StringBuilder;
    move-object v1, v0

    const-string v2, "RPCException: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    if-eqz p0, :cond_0

    .line 179
    const-string v0, "["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    :cond_0
    const-string v0, " : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    if-eqz p1, :cond_1

    .line 183
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAlert()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/alipay/mobile/common/rpc/RpcException;->alert:I

    return v0
.end method

.method public getCode()I
    .locals 1

    .line 159
    iget v0, p0, Lcom/alipay/mobile/common/rpc/RpcException;->mCode:I

    return v0
.end method

.method public getControl()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcException;->mControl:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorSource()I
    .locals 1

    .line 172
    iget v0, p0, Lcom/alipay/mobile/common/rpc/RpcException;->errorSource:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcException;->mMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getOperationType()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcException;->mOperationType:Ljava/lang/String;

    return-object v0
.end method

.method public isBgRpc()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/alipay/mobile/common/rpc/RpcException;->isBgRpc:Z

    return v0
.end method

.method public isClientError()Z
    .locals 2

    .line 189
    iget v0, p0, Lcom/alipay/mobile/common/rpc/RpcException;->errorSource:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isControlOwn()Z
    .locals 1

    .line 146
    iget-boolean v0, p0, Lcom/alipay/mobile/common/rpc/RpcException;->mIsControlOwn:Z

    return v0
.end method

.method public isDialog()Z
    .locals 2

    .line 83
    iget v0, p0, Lcom/alipay/mobile/common/rpc/RpcException;->alert:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNetworkUnavailableError()Z
    .locals 2

    .line 201
    iget v0, p0, Lcom/alipay/mobile/common/rpc/RpcException;->mCode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isServerError()Z
    .locals 2

    .line 193
    iget v0, p0, Lcom/alipay/mobile/common/rpc/RpcException;->errorSource:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSilent()Z
    .locals 1

    .line 92
    iget v0, p0, Lcom/alipay/mobile/common/rpc/RpcException;->alert:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isToast()Z
    .locals 2

    .line 74
    iget v0, p0, Lcom/alipay/mobile/common/rpc/RpcException;->alert:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public maybeNetworkUnavailableError()Z
    .locals 2

    .line 205
    iget v0, p0, Lcom/alipay/mobile/common/rpc/RpcException;->mCode:I

    if-lez v0, :cond_0

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setAlert(I)V
    .locals 0
    .param p1, "alert"    # I

    .line 65
    iput p1, p0, Lcom/alipay/mobile/common/rpc/RpcException;->alert:I

    .line 66
    return-void
.end method

.method public setBgRpc(Z)V
    .locals 0
    .param p1, "isBgRpc"    # Z

    .line 100
    iput-boolean p1, p0, Lcom/alipay/mobile/common/rpc/RpcException;->isBgRpc:Z

    .line 101
    return-void
.end method

.method public setControl(Ljava/lang/String;)V
    .locals 0
    .param p1, "control"    # Ljava/lang/String;

    .line 142
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/RpcException;->mControl:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setControlOwn(Z)V
    .locals 0
    .param p1, "isControlOwn"    # Z

    .line 150
    iput-boolean p1, p0, Lcom/alipay/mobile/common/rpc/RpcException;->mIsControlOwn:Z

    .line 151
    return-void
.end method

.method public setErrorSource()V
    .locals 2

    .line 209
    iget v0, p0, Lcom/alipay/mobile/common/rpc/RpcException;->mCode:I

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_0

    .line 210
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/common/rpc/RpcException;->errorSource:I

    return-void

    .line 211
    :cond_0
    if-le v0, v1, :cond_1

    .line 212
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/common/rpc/RpcException;->errorSource:I

    return-void

    .line 214
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/rpc/RpcException;->errorSource:I

    .line 216
    return-void
.end method

.method public setErrorSource(I)V
    .locals 0
    .param p1, "errorSource"    # I

    .line 197
    iput p1, p0, Lcom/alipay/mobile/common/rpc/RpcException;->errorSource:I

    .line 198
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 219
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/RpcException;->mMsg:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public setOperationType(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .line 134
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/RpcException;->mOperationType:Ljava/lang/String;

    .line 135
    return-void
.end method

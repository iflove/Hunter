.class public Lcom/alipay/mobile/common/transport/http/HttpException;
.super Ljava/io/IOException;
.source "HttpException.java"


# static fields
.field public static final DOWNLOAD_CACHE_DIR_CREATE_ERR:I = 0x11

.field public static final DOWNLOAD_CACHE_FILE_READ_ERR:I = 0x14

.field public static final DOWNLOAD_CACHE_SPACE_NOT_ENOUGH_ERR:I = 0xe

.field public static final DOWNLOAD_COPY_FAILURE_ERR:I = 0x10

.field public static final DOWNLOAD_FILE_CHECK_ERR:I = 0x16

.field public static final DOWNLOAD_SD_WRITE_ERR:I = 0x15

.field public static final DOWNLOAD_TARGET_DIR_CREATE_ERR:I = 0x12

.field public static final DOWNLOAD_TARGET_SPACE_NOT_ENOUGH_ERR:I = 0xf

.field public static final DOWNLOAD_TOO_MANY_REQUESTS:I = 0x1ad

.field public static final DOWNLOAD_URL_BLACK_SET_ERR:I = 0x13

.field public static final ILLEGAL_HTTP_STATUS_CODE:I = 0x34

.field public static final LOGIN_REFRESH_ERR:I = 0x32

.field public static final NETWORK_AUTH_ERROR:I = 0x8

.field public static final NETWORK_CANCEL_ERROR:I = 0xd

.field public static final NETWORK_CONNECTION_EXCEPTION:I = 0x3

.field public static final NETWORK_DNS_ERROR:I = 0x9

.field public static final NETWORK_IO_EXCEPTION:I = 0x6

.field public static final NETWORK_SCHEDULE_ERROR:I = 0x7

.field public static final NETWORK_SERVER_EXCEPTION:I = 0x5

.field public static final NETWORK_SOCKET_EXCEPTION:I = 0x4

.field public static final NETWORK_SSL_EXCEPTION:I = 0x2

.field public static final NETWORK_TASK_TIME_OUT_ERROR:I = 0xe

.field public static final NETWORK_TRAFIC_BEYOND_LIMIT:I = 0xb

.field public static final NETWORK_UNAVAILABLE:I = 0x1

.field public static final NETWORK_UNKNOWN_ERROR:I = 0x0

.field public static final REQ_INTERCEPTOR_ERR:I = 0x33

.field public static final URL_ERROR:I = 0xa


# instance fields
.field protected canRetry:Z

.field protected mCode:I

.field protected mMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/Integer;
    .param p2, "msg"    # Ljava/lang/String;

    .line 168
    invoke-static {p1, p2}, Lcom/alipay/mobile/common/transport/http/HttpException;->format(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpException;->canRetry:Z

    .line 169
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/common/transport/http/HttpException;->mCode:I

    .line 170
    iput-object p2, p0, Lcom/alipay/mobile/common/transport/http/HttpException;->mMsg:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/Integer;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .line 178
    invoke-static {p1, p2}, Lcom/alipay/mobile/common/transport/http/HttpException;->format(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpException;->canRetry:Z

    .line 179
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/common/transport/http/HttpException;->mCode:I

    .line 180
    iput-object p2, p0, Lcom/alipay/mobile/common/transport/http/HttpException;->mMsg:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 149
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpException;->canRetry:Z

    .line 150
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/common/transport/http/HttpException;->mCode:I

    .line 151
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/HttpException;->mMsg:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 158
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpException;->canRetry:Z

    .line 159
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/common/transport/http/HttpException;->mCode:I

    .line 160
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/HttpException;->mMsg:Ljava/lang/String;

    .line 161
    return-void
.end method

.method protected static format(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "code"    # Ljava/lang/Integer;
    .param p1, "message"    # Ljava/lang/String;

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 207
    .local v1, "str":Ljava/lang/StringBuilder;
    move-object v1, v0

    const-string v2, "Http Transport error"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    if-eqz p0, :cond_0

    .line 209
    const-string v0, "["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    :cond_0
    const-string v0, " : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    if-eqz p1, :cond_1

    .line 213
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 189
    iget v0, p0, Lcom/alipay/mobile/common/transport/http/HttpException;->mCode:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpException;->mMsg:Ljava/lang/String;

    return-object v0
.end method

.method public isCanRetry()Z
    .locals 1

    .line 219
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpException;->canRetry:Z

    return v0
.end method

.method public setCanRetry(Z)V
    .locals 0
    .param p1, "canRetry"    # Z

    .line 223
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/http/HttpException;->canRetry:Z

    .line 224
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 202
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/HttpException;->mMsg:Ljava/lang/String;

    .line 203
    return-void
.end method

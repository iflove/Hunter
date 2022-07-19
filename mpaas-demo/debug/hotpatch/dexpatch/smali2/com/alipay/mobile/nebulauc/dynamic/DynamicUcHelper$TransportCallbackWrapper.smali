.class Lcom/alipay/mobile/nebulauc/dynamic/DynamicUcHelper$TransportCallbackWrapper;
.super Ljava/lang/Object;
.source "DynamicUcHelper.java"

# interfaces
.implements Lcom/alipay/mobile/common/transport/TransportCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulauc/dynamic/DynamicUcHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransportCallbackWrapper"
.end annotation


# instance fields
.field coreVersion:Ljava/lang/String;

.field fileName:Ljava/lang/String;

.field mCallback:Lcom/alipay/mobile/common/transport/TransportCallback;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/transport/TransportCallback;)V
    .locals 0
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "coreVersion"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/alipay/mobile/common/transport/TransportCallback;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p3, p0, Lcom/alipay/mobile/nebulauc/dynamic/DynamicUcHelper$TransportCallbackWrapper;->mCallback:Lcom/alipay/mobile/common/transport/TransportCallback;

    .line 107
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/dynamic/DynamicUcHelper$TransportCallbackWrapper;->fileName:Ljava/lang/String;

    .line 108
    iput-object p2, p0, Lcom/alipay/mobile/nebulauc/dynamic/DynamicUcHelper$TransportCallbackWrapper;->coreVersion:Ljava/lang/String;

    .line 110
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/transport/TransportCallback;Lcom/alipay/mobile/nebulauc/dynamic/DynamicUcHelper$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/alipay/mobile/common/transport/TransportCallback;
    .param p4, "x3"    # Lcom/alipay/mobile/nebulauc/dynamic/DynamicUcHelper$1;

    .line 100
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/nebulauc/dynamic/DynamicUcHelper$TransportCallbackWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/transport/TransportCallback;)V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 2
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;

    .line 114
    const-string v0, "DynamicUcHelper"

    const-string v1, "download cancel."

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const/4 v0, 0x0

    # setter for: Lcom/alipay/mobile/nebulauc/dynamic/DynamicUcHelper;->isDownloading:Z
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/dynamic/DynamicUcHelper;->access$102(Z)Z

    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/dynamic/DynamicUcHelper$TransportCallbackWrapper;->mCallback:Lcom/alipay/mobile/common/transport/TransportCallback;

    if-eqz v0, :cond_0

    .line 117
    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/transport/TransportCallback;->onCancelled(Lcom/alipay/mobile/common/transport/Request;)V

    .line 119
    :cond_0
    return-void
.end method

.method public onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V
    .locals 2
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;
    .param p2, "i"    # I
    .param p3, "s"    # Ljava/lang/String;

    .line 155
    const/4 v0, 0x0

    # setter for: Lcom/alipay/mobile/nebulauc/dynamic/DynamicUcHelper;->isDownloading:Z
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/dynamic/DynamicUcHelper;->access$102(Z)Z

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DynamicUcHelper"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/dynamic/DynamicUcHelper$TransportCallbackWrapper;->mCallback:Lcom/alipay/mobile/common/transport/TransportCallback;

    if-eqz v0, :cond_0

    .line 158
    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/common/transport/TransportCallback;->onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V

    .line 160
    :cond_0
    return-void
.end method

.method public onPostExecute(Lcom/alipay/mobile/common/transport/Request;Lcom/alipay/mobile/common/transport/Response;)V
    .locals 3
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;
    .param p2, "response"    # Lcom/alipay/mobile/common/transport/Response;

    .line 133
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "h5_ucsdkLocalUpdatePath"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/SharedPreferencesManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    move-result-object v0

    .line 135
    .local v0, "preferences":Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/dynamic/DynamicUcHelper$TransportCallbackWrapper;->fileName:Ljava/lang/String;

    const-string v2, "path"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 136
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/dynamic/DynamicUcHelper$TransportCallbackWrapper;->coreVersion:Ljava/lang/String;

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 137
    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->commit()Z

    .line 138
    const-string v1, "DynamicUcHelper"

    const-string v2, "download finish."

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const/4 v1, 0x0

    # setter for: Lcom/alipay/mobile/nebulauc/dynamic/DynamicUcHelper;->isDownloading:Z
    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/dynamic/DynamicUcHelper;->access$102(Z)Z

    .line 140
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/dynamic/DynamicUcHelper$TransportCallbackWrapper;->mCallback:Lcom/alipay/mobile/common/transport/TransportCallback;

    if-eqz v1, :cond_0

    .line 141
    invoke-interface {v1, p1, p2}, Lcom/alipay/mobile/common/transport/TransportCallback;->onPostExecute(Lcom/alipay/mobile/common/transport/Request;Lcom/alipay/mobile/common/transport/Response;)V

    .line 143
    :cond_0
    return-void
.end method

.method public onPreExecute(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 2
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;

    .line 123
    const-string v0, "DynamicUcHelper"

    const-string v1, "start download."

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/dynamic/DynamicUcHelper$TransportCallbackWrapper;->mCallback:Lcom/alipay/mobile/common/transport/TransportCallback;

    if-eqz v0, :cond_0

    .line 125
    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/transport/TransportCallback;->onPreExecute(Lcom/alipay/mobile/common/transport/Request;)V

    .line 127
    :cond_0
    return-void
.end method

.method public onProgressUpdate(Lcom/alipay/mobile/common/transport/Request;D)V
    .locals 2
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;
    .param p2, "v"    # D

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downloading: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DynamicUcHelper"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/dynamic/DynamicUcHelper$TransportCallbackWrapper;->mCallback:Lcom/alipay/mobile/common/transport/TransportCallback;

    if-eqz v0, :cond_0

    .line 149
    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/common/transport/TransportCallback;->onProgressUpdate(Lcom/alipay/mobile/common/transport/Request;D)V

    .line 151
    :cond_0
    return-void
.end method

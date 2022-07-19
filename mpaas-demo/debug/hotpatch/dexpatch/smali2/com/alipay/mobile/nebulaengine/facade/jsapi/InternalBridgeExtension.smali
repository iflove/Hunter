.class public Lcom/alipay/mobile/nebulaengine/facade/jsapi/InternalBridgeExtension;
.super Ljava/lang/Object;
.source "InternalBridgeExtension.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/kernel/extension/bridge/BridgeExtension;


# static fields
.field public static final TAG:Ljava/lang/String; = "NebulaXEngine.InternalBridgeExtension"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public h5PageReload(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BaseInfoQuery;)Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse;
    .locals 2
    .param p1    # Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BaseInfoQuery;
        .annotation runtime Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingBaseInfoQuery;
        .end annotation
    .end param
    .annotation runtime Lcom/alipay/mobile/nebulax/kernel/annotation/AutoCallback;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType;
        value = .enum Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;->UI:Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/nebulax/kernel/annotation/ActionFilter;
    .end annotation

    .line 165
    invoke-interface {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BaseInfoQuery;->getInternalProcessor()Lcom/alipay/mobile/nebulax/engine/api/bridge/model/InternalProcessor;

    move-result-object p1

    .line 166
    if-nez p1, :cond_0

    .line 167
    const-string p1, "NebulaXEngine.InternalBridgeExtension"

    const-string v0, "internalProcessor is null"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    new-instance p1, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse$Error;

    const/4 v1, 0x5

    invoke-direct {p1, v1, v0}, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse$Error;-><init>(ILjava/lang/String;)V

    return-object p1

    .line 170
    :cond_0
    invoke-interface {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/InternalProcessor;->reload()V

    .line 171
    sget-object p1, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse;->SUCCESS:Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse;

    return-object p1
.end method

.method public inputFocus4Android(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BaseInfoQuery;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse;
    .locals 12
    .param p1    # Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BaseInfoQuery;
        .annotation runtime Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingBaseInfoQuery;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingParam;
            value = {
                "coordinateX"
            }
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingParam;
            value = {
                "coordinateY"
            }
        .end annotation
    .end param
    .annotation runtime Lcom/alipay/mobile/nebulax/kernel/annotation/AutoCallback;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType;
        value = .enum Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;->UI:Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/nebulax/kernel/annotation/ActionFilter;
    .end annotation

    .line 126
    invoke-interface {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BaseInfoQuery;->getInternalView()Landroid/view/View;

    move-result-object p1

    .line 127
    const-string v0, "NebulaXEngine.InternalBridgeExtension"

    if-nez p1, :cond_0

    .line 128
    const-string p1, "inputFocus4Android realWebView == null"

    invoke-static {v0, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    sget-object p1, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse;->SUCCESS:Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse;

    return-object p1

    .line 132
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", y "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :try_start_0
    invoke-static {p2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 135
    invoke-static {p3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    .line 136
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 137
    const/4 v5, 0x0

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v3, v9

    move v6, p2

    move v7, p3

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v11

    .line 139
    const-wide/16 v1, 0x12c

    add-long v3, v9, v1

    .line 140
    const/4 v5, 0x1

    const/4 v8, 0x0

    move-wide v1, v3

    move v6, p2

    move v7, p3

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p2

    .line 142
    invoke-virtual {p1, v11}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 143
    invoke-virtual {p1, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 144
    invoke-virtual {v11}, Landroid/view/MotionEvent;->recycle()V

    .line 145
    invoke-virtual {p2}, Landroid/view/MotionEvent;->recycle()V

    .line 146
    sget-object p1, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse;->SUCCESS:Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 148
    :catchall_0
    move-exception p1

    .line 149
    const-string p2, "inputFocus4Android exception "

    invoke-static {v0, p2, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    sget-object p1, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse;->INVALID_PARAM:Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse;

    return-object p1
.end method

.method public insertJS(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BaseInfoQuery;Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeCallback;Ljava/lang/String;)V
    .locals 3
    .param p1    # Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BaseInfoQuery;
        .annotation runtime Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingBaseInfoQuery;
        .end annotation
    .end param
    .param p2    # Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingParam;
            value = {
                "jsUrl"
            }
        .end annotation
    .end param
    .annotation runtime Lcom/alipay/mobile/nebulax/kernel/annotation/ActionFilter;
        value = "insertJS"
    .end annotation

    .line 65
    invoke-interface {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BaseInfoQuery;->getInternalProcessor()Lcom/alipay/mobile/nebulax/engine/api/bridge/model/InternalProcessor;

    move-result-object p1

    .line 66
    const/4 v0, 0x5

    const-string v1, "NebulaXEngine.InternalBridgeExtension"

    if-nez p1, :cond_0

    .line 67
    const-string p1, "internalProcessor is null"

    invoke-static {v1, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance p3, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse$Error;

    invoke-direct {p3, v0, p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse$Error;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p3}, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeCallback;->sendBridgeResponse(Ljava/lang/Object;)V

    .line 69
    return-void

    .line 72
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulax/engine/common/b/a;->a()Z

    move-result v2

    if-nez v2, :cond_1

    .line 73
    const-string p1, "insertJS only allow in debug app"

    invoke-static {v1, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance p3, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse$Error;

    invoke-direct {p3, v0, p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse$Error;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p3}, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeCallback;->sendBridgeResponse(Ljava/lang/Object;)V

    .line 75
    return-void

    .line 78
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jsUrl = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-interface {p1, p3}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/InternalProcessor;->insertJS(Ljava/lang/String;)V

    .line 80
    sget-object p1, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse;->SUCCESS:Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse;

    invoke-interface {p2, p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeCallback;->sendBridgeResponse(Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method public onFinalized()V
    .locals 0

    .line 183
    return-void
.end method

.method public onInitialized()V
    .locals 0

    .line 178
    return-void
.end method

.method public permit()Lcom/alipay/mobile/nebulax/kernel/security/Permission;
    .locals 1

    .line 187
    const/4 v0, 0x0

    return-object v0
.end method

.method public setGestureBack()Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse;
    .locals 2
    .annotation runtime Lcom/alipay/mobile/nebulax/kernel/annotation/AutoCallback;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/nebulax/kernel/annotation/ActionFilter;
    .end annotation

    .line 157
    const-string v0, "NebulaXEngine.InternalBridgeExtension"

    const-string v1, "This is an empty implementation for SET_GESTURE_BACK"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse;->SUCCESS:Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse;

    return-object v0
.end method

.method public setServiceWorkerID(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BaseInfoQuery;Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeCallback;Ljava/lang/String;)V
    .locals 3
    .param p1    # Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BaseInfoQuery;
        .annotation runtime Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingBaseInfoQuery;
        .end annotation
    .end param
    .param p2    # Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingParam;
            value = {
                "id"
            }
        .end annotation
    .end param
    .annotation runtime Lcom/alipay/mobile/nebulax/kernel/annotation/ActionFilter;
        value = "setServiceWorkerID"
    .end annotation

    .line 41
    invoke-interface {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BaseInfoQuery;->getInternalProcessor()Lcom/alipay/mobile/nebulax/engine/api/bridge/model/InternalProcessor;

    move-result-object p1

    .line 43
    const/4 v0, 0x5

    const-string v1, "NebulaXEngine.InternalBridgeExtension"

    if-nez p1, :cond_0

    .line 44
    const-string p1, "setServiceWorkerID internalProcessor is null"

    invoke-static {v1, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance p3, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse$Error;

    invoke-direct {p3, v0, p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse$Error;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p3}, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeCallback;->sendBridgeResponse(Ljava/lang/Object;)V

    .line 46
    return-void

    .line 48
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 49
    const-string p1, "setServiceWorkerID workerId  is null"

    invoke-static {v1, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance p1, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse$Error;

    const-string p3, "setServiceWorkerID workId is null"

    invoke-direct {p1, v0, p3}, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse$Error;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeCallback;->sendBridgeResponse(Ljava/lang/Object;)V

    .line 51
    return-void

    .line 53
    :cond_1
    new-instance v0, Lcom/alipay/mobile/nebulax/engine/a/c/b/c;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulax/engine/a/c/b/c;-><init>()V

    .line 54
    invoke-virtual {v0, p3}, Lcom/alipay/mobile/nebulax/engine/a/c/b/c;->setWorkerId(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    invoke-interface {p1, v0}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/InternalProcessor;->setWorkerProxy(Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProxy;)V

    .line 56
    sget-object p1, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse;->SUCCESS:Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse;

    invoke-interface {p2, p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeCallback;->sendBridgeResponse(Ljava/lang/Object;)V

    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "success setServiceWorkerID "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public showSoftInput(ZLjava/lang/String;Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BaseInfoQuery;)Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse;
    .locals 3
    .param p1    # Z
        .annotation runtime Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingParam;
            value = {
                "show"
            }
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingParam;
            value = {
                "show"
            }
        .end annotation
    .end param
    .param p3    # Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BaseInfoQuery;
        .annotation runtime Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingBaseInfoQuery;
        .end annotation
    .end param
    .annotation runtime Lcom/alipay/mobile/nebulax/kernel/annotation/AutoCallback;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType;
        value = .enum Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;->UI:Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/nebulax/kernel/annotation/ActionFilter;
    .end annotation

    .line 101
    invoke-interface {p3}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BaseInfoQuery;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 102
    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 103
    invoke-interface {p3}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BaseInfoQuery;->getInternalView()Landroid/view/View;

    move-result-object p3

    .line 105
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v1, 0x2

    const-string v2, "NebulaXEngine.InternalBridgeExtension"

    if-nez p2, :cond_1

    .line 106
    if-eqz p1, :cond_0

    .line 107
    invoke-virtual {v0, p3, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 108
    const-string p1, "showSoftInput  show "

    invoke-static {v2, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 111
    const-string p1, "showSoftInput  hide "

    invoke-static {v2, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :goto_0
    sget-object p1, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse;->SUCCESS:Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse;

    return-object p1

    .line 115
    :cond_1
    const-string p1, "you should specify whether to or not to show soft input"

    invoke-static {v2, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    new-instance p1, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse$Error;

    const-string p2, "error not set \"show\" key  "

    invoke-direct {p1, v1, p2}, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse$Error;-><init>(ILjava/lang/String;)V

    return-object p1
.end method

.method public toggleSoftInput(Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BaseInfoQuery;)Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse;
    .locals 2
    .param p1    # Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BaseInfoQuery;
        .annotation runtime Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/annotation/BindingBaseInfoQuery;
        .end annotation
    .end param
    .annotation runtime Lcom/alipay/mobile/nebulax/kernel/annotation/AutoCallback;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType;
        value = .enum Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;->UI:Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/nebulax/kernel/annotation/ActionFilter;
    .end annotation

    .line 87
    invoke-interface {p1}, Lcom/alipay/mobile/nebulax/engine/api/bridge/model/BaseInfoQuery;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 88
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 89
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 90
    const-string p1, "NebulaXEngine.InternalBridgeExtension"

    const-string v0, "toggleSoftInput success "

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    sget-object p1, Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse;->SUCCESS:Lcom/alipay/mobile/nebulax/engine/api/bridge/extension/BridgeResponse;

    return-object p1
.end method

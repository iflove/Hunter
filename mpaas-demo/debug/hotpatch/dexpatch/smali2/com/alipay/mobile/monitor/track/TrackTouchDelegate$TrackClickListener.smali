.class public Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;
.super Ljava/lang/Object;
.source "TrackTouchDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TrackClickListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;

    .line 166
    iput-object p1, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;->a:Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;->a:Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;

    invoke-static {v0}, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->a(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const-string/jumbo v1, "subappResume"

    iget-object v2, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;->a:Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;

    invoke-static {v2}, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->b(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->notifyClientEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 196
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const-string/jumbo v1, "viewSwitch"

    iget-object v2, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;->a:Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;

    invoke-static {v2}, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->c(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->notifyClientEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 199
    :cond_0
    const/4 v0, 0x0

    .line 200
    .local v0, "intercepted":Z
    iget-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;->a:Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;

    invoke-static {v1}, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->d(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 201
    iget-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;->a:Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;

    invoke-static {v1}, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->d(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;->a:Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;

    invoke-static {v2}, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->c(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;->a:Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;

    invoke-static {v3}, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->b(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;->handleOnClick(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    .line 204
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;->a:Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;

    invoke-static {v1}, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->g(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 205
    iget-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;->a:Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;

    invoke-static {v1}, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->g(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 206
    iget-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;->a:Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;

    invoke-static {v1}, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->d(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;->handleOnClickAfter(Landroid/view/View;)V

    .line 209
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;->a:Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;

    invoke-static {v1}, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->f(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    .end local v0    # "intercepted":Z
    goto :goto_0

    .line 210
    :catchall_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "TrackClickListener"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 214
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;->a:Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;

    invoke-static {v0}, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->a(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;->a:Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;

    invoke-static {v1}, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->b(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "subappResume"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->notifyClientEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;->a:Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;

    invoke-static {v1}, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->c(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "viewSwitch"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->notifyClientEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    :cond_0
    const/4 v0, 0x0

    .line 177
    .local v0, "intercepted":Z
    iget-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;->a:Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;

    invoke-static {v1}, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->d(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 178
    iget-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;->a:Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;

    invoke-static {v1}, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->d(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;

    move-result-object v2

    iget-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;->a:Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;

    invoke-static {v1}, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->c(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)Ljava/lang/String;

    move-result-object v8

    iget-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;->a:Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;

    invoke-static {v1}, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->b(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)Ljava/lang/String;

    move-result-object v9

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-virtual/range {v2 .. v9}, Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;->handleOnItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 181
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;->a:Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;

    invoke-static {v1}, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->e(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 182
    iget-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;->a:Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;

    invoke-static {v1}, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->e(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 183
    iget-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;->a:Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;

    invoke-static {v1}, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->d(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;

    move-result-object v2

    invoke-virtual/range {v2 .. v7}, Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;->handleOnItemClickAfter(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 186
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;->a:Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;

    invoke-static {v1}, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->f(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)V

    .line 187
    return-void
.end method

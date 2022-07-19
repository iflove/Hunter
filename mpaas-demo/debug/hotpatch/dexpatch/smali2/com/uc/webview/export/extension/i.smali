.class final Lcom/uc/webview/export/extension/i;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 2

    .line 1427
    check-cast p1, [Ljava/lang/Object;

    .line 2430
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2431
    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2457
    :pswitch_0
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->q:Ljava/util/Map;

    aget-object p1, p1, v1

    check-cast p1, Ljava/lang/Integer;

    const-string v1, "sdk_ecuz1"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2454
    :pswitch_1
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->q:Ljava/util/Map;

    aget-object p1, p1, v1

    check-cast p1, Ljava/lang/Integer;

    const-string v1, "sdk_ecv1"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2455
    return-void

    .line 2451
    :pswitch_2
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->q:Ljava/util/Map;

    aget-object p1, p1, v1

    check-cast p1, Ljava/lang/Integer;

    const-string v1, "sdk_ecdl1"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2452
    return-void

    .line 2448
    :pswitch_3
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->q:Ljava/util/Map;

    aget-object p1, p1, v1

    check-cast p1, Ljava/lang/Integer;

    const-string v1, "sdk_ecur1"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2449
    return-void

    .line 2445
    :pswitch_4
    const-wide/32 v0, 0x10000

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lcom/uc/webview/export/internal/SDKFactory;->a(Ljava/lang/Long;)V

    .line 2446
    return-void

    .line 2442
    :pswitch_5
    const-wide/16 v0, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lcom/uc/webview/export/internal/SDKFactory;->a(Ljava/lang/Long;)V

    .line 2443
    return-void

    .line 2439
    :pswitch_6
    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lcom/uc/webview/export/internal/SDKFactory;->a(Ljava/lang/Long;)V

    .line 2440
    return-void

    .line 2436
    :pswitch_7
    const-wide/16 v0, 0x800

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lcom/uc/webview/export/internal/SDKFactory;->a(Ljava/lang/Long;)V

    .line 2437
    return-void

    .line 2433
    :pswitch_8
    const-wide/16 v0, 0x400

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lcom/uc/webview/export/internal/SDKFactory;->a(Ljava/lang/Long;)V

    .line 2434
    return-void

    .line 1427
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

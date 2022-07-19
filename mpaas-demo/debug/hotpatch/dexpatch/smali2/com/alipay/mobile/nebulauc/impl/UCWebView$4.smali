.class final Lcom/alipay/mobile/nebulauc/impl/UCWebView$4;
.super Ljava/lang/Object;
.source "UCWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/impl/UCWebView;->preCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 310
    # invokes: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->preloadAppXJs()V
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$800()V

    .line 311
    return-void
.end method

.class final Lcom/alipay/mobile/antui/badge/AUBadgeView$1;
.super Ljava/lang/Object;
.source "AUBadgeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/badge/AUBadgeView;->setStyleAndContent(Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/badge/AUBadgeView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/badge/AUBadgeView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/badge/AUBadgeView;

    .line 258
    iput-object p1, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView$1;->a:Lcom/alipay/mobile/antui/badge/AUBadgeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView$1;->a:Lcom/alipay/mobile/antui/badge/AUBadgeView;

    # invokes: Lcom/alipay/mobile/antui/badge/AUBadgeView;->doRefresh()V
    invoke-static {v0}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->access$000(Lcom/alipay/mobile/antui/badge/AUBadgeView;)V

    .line 263
    return-void
.end method

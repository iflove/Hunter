.class final Lcom/alipay/mobile/antui/segement/AUSegment$6;
.super Ljava/lang/Object;
.source "AUSegment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/segement/AUSegment;->setCurrentIndex(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/segement/AUSegment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/segement/AUSegment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/segement/AUSegment;

    .line 1047
    iput-object p1, p0, Lcom/alipay/mobile/antui/segement/AUSegment$6;->a:Lcom/alipay/mobile/antui/segement/AUSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1051
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment$6;->a:Lcom/alipay/mobile/antui/segement/AUSegment;

    # getter for: Lcom/alipay/mobile/antui/segement/AUSegment;->currentClickedOnMenu:Lcom/alipay/mobile/antui/segement/MenuItemLayout;
    invoke-static {v0}, Lcom/alipay/mobile/antui/segement/AUSegment;->access$400(Lcom/alipay/mobile/antui/segement/AUSegment;)Lcom/alipay/mobile/antui/segement/MenuItemLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/segement/MenuItemLayout;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/antui/segement/AUSegment$6;->a:Lcom/alipay/mobile/antui/segement/AUSegment;

    # getter for: Lcom/alipay/mobile/antui/segement/AUSegment;->currentClickedOnMenu:Lcom/alipay/mobile/antui/segement/MenuItemLayout;
    invoke-static {v2}, Lcom/alipay/mobile/antui/segement/AUSegment;->access$400(Lcom/alipay/mobile/antui/segement/AUSegment;)Lcom/alipay/mobile/antui/segement/MenuItemLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/antui/segement/MenuItemLayout;->getTextWidth()I

    move-result v2

    # invokes: Lcom/alipay/mobile/antui/segement/AUSegment;->moveScrollBarTo(FI)V
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/antui/segement/AUSegment;->access$500(Lcom/alipay/mobile/antui/segement/AUSegment;FI)V

    .line 1053
    iget-object v0, p0, Lcom/alipay/mobile/antui/segement/AUSegment$6;->a:Lcom/alipay/mobile/antui/segement/AUSegment;

    # getter for: Lcom/alipay/mobile/antui/segement/AUSegment;->currentClickedOnMenu:Lcom/alipay/mobile/antui/segement/MenuItemLayout;
    invoke-static {v0}, Lcom/alipay/mobile/antui/segement/AUSegment;->access$400(Lcom/alipay/mobile/antui/segement/AUSegment;)Lcom/alipay/mobile/antui/segement/MenuItemLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/antui/segement/AUSegment$6;->a:Lcom/alipay/mobile/antui/segement/AUSegment;

    # getter for: Lcom/alipay/mobile/antui/segement/AUSegment;->currentClickedOnMenu:Lcom/alipay/mobile/antui/segement/MenuItemLayout;
    invoke-static {v2}, Lcom/alipay/mobile/antui/segement/AUSegment;->access$400(Lcom/alipay/mobile/antui/segement/AUSegment;)Lcom/alipay/mobile/antui/segement/MenuItemLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/antui/segement/MenuItemLayout;->getX()F

    move-result v2

    # invokes: Lcom/alipay/mobile/antui/segement/AUSegment;->menuBarScroll(Landroid/view/View;F)V
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/antui/segement/AUSegment;->access$900(Lcom/alipay/mobile/antui/segement/AUSegment;Landroid/view/View;F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1056
    return-void

    .line 1054
    :catch_0
    move-exception v0

    .line 1055
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AUSegment"

    invoke-static {v2, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

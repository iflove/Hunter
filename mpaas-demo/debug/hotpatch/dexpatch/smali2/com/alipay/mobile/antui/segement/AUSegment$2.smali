.class final Lcom/alipay/mobile/antui/segement/AUSegment$2;
.super Ljava/lang/Object;
.source "AUSegment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/segement/AUSegment;->setAnchor(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alipay/mobile/antui/segement/AUSegment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/segement/AUSegment;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/segement/AUSegment;

    .line 816
    iput-object p1, p0, Lcom/alipay/mobile/antui/segement/AUSegment$2;->b:Lcom/alipay/mobile/antui/segement/AUSegment;

    iput p2, p0, Lcom/alipay/mobile/antui/segement/AUSegment$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 821
    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [I

    .line 822
    .local v0, "location":[I
    iget-object v1, p0, Lcom/alipay/mobile/antui/segement/AUSegment$2;->b:Lcom/alipay/mobile/antui/segement/AUSegment;

    # getter for: Lcom/alipay/mobile/antui/segement/AUSegment;->viewContainer:Lcom/alipay/mobile/antui/segement/AUScrollLayout;
    invoke-static {v1}, Lcom/alipay/mobile/antui/segement/AUSegment;->access$100(Lcom/alipay/mobile/antui/segement/AUSegment;)Lcom/alipay/mobile/antui/segement/AUScrollLayout;

    move-result-object v1

    iget v2, p0, Lcom/alipay/mobile/antui/segement/AUSegment$2;->a:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/segement/AUScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 823
    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v3, p0, Lcom/alipay/mobile/antui/segement/AUSegment$2;->b:Lcom/alipay/mobile/antui/segement/AUSegment;

    # getter for: Lcom/alipay/mobile/antui/segement/AUSegment;->screenWidth:I
    invoke-static {v3}, Lcom/alipay/mobile/antui/segement/AUSegment;->access$200(Lcom/alipay/mobile/antui/segement/AUSegment;)I

    move-result v3

    div-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    .line 824
    .local v2, "distance":I
    iget-object v3, p0, Lcom/alipay/mobile/antui/segement/AUSegment$2;->b:Lcom/alipay/mobile/antui/segement/AUSegment;

    # getter for: Lcom/alipay/mobile/antui/segement/AUSegment;->horizontalScrollView:Landroid/widget/HorizontalScrollView;
    invoke-static {v3}, Lcom/alipay/mobile/antui/segement/AUSegment;->access$300(Lcom/alipay/mobile/antui/segement/AUSegment;)Landroid/widget/HorizontalScrollView;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 827
    .end local v0    # "location":[I
    .end local v2    # "distance":I
    return-void

    .line 825
    :catch_0
    move-exception v0

    .line 826
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AUSegment"

    invoke-static {v2, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

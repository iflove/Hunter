.class public Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;
.super Ljava/lang/Object;
.source "AUCardOptionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/antui/basic/AUCardOptionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CardOptionItem"
.end annotation


# instance fields
.field public count:I

.field public hasClicked:Z

.field public official:Z

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;->hasClicked:Z

    .line 450
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;->official:Z

    .line 451
    return-void
.end method

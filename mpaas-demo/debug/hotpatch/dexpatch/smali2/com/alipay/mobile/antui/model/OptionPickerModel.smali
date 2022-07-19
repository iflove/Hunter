.class public Lcom/alipay/mobile/antui/model/OptionPickerModel;
.super Ljava/lang/Object;
.source "OptionPickerModel.java"


# instance fields
.field public optionStr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public selected:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/model/OptionPickerModel;->selected:I

    return-void
.end method

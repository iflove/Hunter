.class public Lcom/alipay/mobile/antui/model/FilterCategoryData;
.super Ljava/lang/Object;
.source "FilterCategoryData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public code:Ljava/lang/String;

.field public groupId:Ljava/lang/String;

.field public itemDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/antui/model/FilterItemData;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public selectItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/antui/model/FilterItemData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

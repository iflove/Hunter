.class public Lcom/alipay/fulllink/msg/FieldInfo;
.super Ljava/lang/Object;
.source "FieldInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public intValue:I

.field public label:I

.field public name:Ljava/lang/String;

.field public stringValue:Ljava/lang/String;

.field public tag:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/fulllink/msg/FieldInfo;->tag:I

    .line 12
    iput v0, p0, Lcom/alipay/fulllink/msg/FieldInfo;->label:I

    .line 13
    iput v0, p0, Lcom/alipay/fulllink/msg/FieldInfo;->type:I

    .line 14
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/fulllink/msg/FieldInfo;->name:Ljava/lang/String;

    .line 15
    iput v0, p0, Lcom/alipay/fulllink/msg/FieldInfo;->intValue:I

    .line 16
    iput-object v1, p0, Lcom/alipay/fulllink/msg/FieldInfo;->stringValue:Ljava/lang/String;

    return-void
.end method

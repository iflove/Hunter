.class public final Lcom/mpaas/control/api/R$string;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mpaas/control/api/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "string"
.end annotation


# static fields
.field public static final license_tip_illegal:I

.field public static final license_tip_illegal_overdue:I

.field public static final license_tip_illegal_properties:I

.field public static final license_tip_illegal_success:I

.field public static final license_tip_illegal_trial:I

.field public static final license_tip_illegal_version:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    const-string v0, "string"

    const-string v1, "license_tip_illegal"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/control/api/R$string;->license_tip_illegal:I

    .line 12
    const-string v1, "license_tip_illegal_overdue"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/control/api/R$string;->license_tip_illegal_overdue:I

    .line 13
    const-string v1, "license_tip_illegal_properties"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/control/api/R$string;->license_tip_illegal_properties:I

    .line 14
    const-string v1, "license_tip_illegal_success"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/control/api/R$string;->license_tip_illegal_success:I

    .line 15
    const-string v1, "license_tip_illegal_trial"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/control/api/R$string;->license_tip_illegal_trial:I

    .line 16
    const-string v1, "license_tip_illegal_version"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mpaas/control/api/R$string;->license_tip_illegal_version:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

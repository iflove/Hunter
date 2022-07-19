.class public Lcom/j256/ormlite/field/types/FloatType;
.super Lcom/j256/ormlite/field/types/FloatObjectType;
.source "FloatType.java"


# static fields
.field private static final singleTon:Lcom/j256/ormlite/field/types/FloatType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/j256/ormlite/field/types/FloatType;

    invoke-direct {v0}, Lcom/j256/ormlite/field/types/FloatType;-><init>()V

    sput-object v0, Lcom/j256/ormlite/field/types/FloatType;->singleTon:Lcom/j256/ormlite/field/types/FloatType;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 26
    sget-object v0, Lcom/j256/ormlite/field/SqlType;->FLOAT:Lcom/j256/ormlite/field/SqlType;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/j256/ormlite/field/types/FloatObjectType;-><init>(Lcom/j256/ormlite/field/SqlType;[Ljava/lang/Class;)V

    .line 27
    return-void
.end method

.method protected constructor <init>(Lcom/j256/ormlite/field/SqlType;[Ljava/lang/Class;)V
    .locals 0
    .param p1, "sqlType"    # Lcom/j256/ormlite/field/SqlType;
    .param p2, "classes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/field/SqlType;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/j256/ormlite/field/types/FloatObjectType;-><init>(Lcom/j256/ormlite/field/SqlType;[Ljava/lang/Class;)V

    .line 34
    return-void
.end method

.method public static getSingleton()Lcom/j256/ormlite/field/types/FloatType;
    .locals 1

    .line 22
    sget-object v0, Lcom/j256/ormlite/field/types/FloatType;->singleTon:Lcom/j256/ormlite/field/types/FloatType;

    return-object v0
.end method


# virtual methods
.method public isPrimitive()Z
    .locals 1

    .line 38
    const/4 v0, 0x1

    return v0
.end method

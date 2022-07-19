.class final enum Lcom/alipay/mobile/h5container/api/H5TitleBar$TitleBarTheme;
.super Ljava/lang/Enum;
.source "H5TitleBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/h5container/api/H5TitleBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "TitleBarTheme"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/h5container/api/H5TitleBar$TitleBarTheme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/h5container/api/H5TitleBar$TitleBarTheme;

.field public static final enum BLUE:Lcom/alipay/mobile/h5container/api/H5TitleBar$TitleBarTheme;

.field public static final enum WHITE:Lcom/alipay/mobile/h5container/api/H5TitleBar$TitleBarTheme;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 172
    new-instance v0, Lcom/alipay/mobile/h5container/api/H5TitleBar$TitleBarTheme;

    const-string v1, "WHITE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/h5container/api/H5TitleBar$TitleBarTheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5TitleBar$TitleBarTheme;->WHITE:Lcom/alipay/mobile/h5container/api/H5TitleBar$TitleBarTheme;

    .line 173
    new-instance v1, Lcom/alipay/mobile/h5container/api/H5TitleBar$TitleBarTheme;

    const-string v3, "BLUE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/alipay/mobile/h5container/api/H5TitleBar$TitleBarTheme;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alipay/mobile/h5container/api/H5TitleBar$TitleBarTheme;->BLUE:Lcom/alipay/mobile/h5container/api/H5TitleBar$TitleBarTheme;

    .line 171
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/alipay/mobile/h5container/api/H5TitleBar$TitleBarTheme;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/alipay/mobile/h5container/api/H5TitleBar$TitleBarTheme;->$VALUES:[Lcom/alipay/mobile/h5container/api/H5TitleBar$TitleBarTheme;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 171
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5TitleBar$TitleBarTheme;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 171
    const-class v0, Lcom/alipay/mobile/h5container/api/H5TitleBar$TitleBarTheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5TitleBar$TitleBarTheme;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/h5container/api/H5TitleBar$TitleBarTheme;
    .locals 1

    .line 171
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5TitleBar$TitleBarTheme;->$VALUES:[Lcom/alipay/mobile/h5container/api/H5TitleBar$TitleBarTheme;

    invoke-virtual {v0}, [Lcom/alipay/mobile/h5container/api/H5TitleBar$TitleBarTheme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/h5container/api/H5TitleBar$TitleBarTheme;

    return-object v0
.end method

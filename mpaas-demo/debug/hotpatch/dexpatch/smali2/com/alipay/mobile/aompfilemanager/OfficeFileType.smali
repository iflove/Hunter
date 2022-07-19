.class public final enum Lcom/alipay/mobile/aompfilemanager/OfficeFileType;
.super Ljava/lang/Enum;
.source "OfficeFileType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/aompfilemanager/OfficeFileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/aompfilemanager/OfficeFileType;

.field public static final enum Doc:Lcom/alipay/mobile/aompfilemanager/OfficeFileType;

.field public static final enum Docx:Lcom/alipay/mobile/aompfilemanager/OfficeFileType;

.field public static final enum PPt:Lcom/alipay/mobile/aompfilemanager/OfficeFileType;

.field public static final enum PPtx:Lcom/alipay/mobile/aompfilemanager/OfficeFileType;

.field public static final enum Pdf:Lcom/alipay/mobile/aompfilemanager/OfficeFileType;

.field public static final enum Xls:Lcom/alipay/mobile/aompfilemanager/OfficeFileType;

.field public static final enum Xlsx:Lcom/alipay/mobile/aompfilemanager/OfficeFileType;


# instance fields
.field private code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 4
    new-instance v0, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;

    const-string v1, "Doc"

    const/4 v2, 0x0

    const-string v3, "doc"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->Doc:Lcom/alipay/mobile/aompfilemanager/OfficeFileType;

    .line 6
    new-instance v1, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;

    const-string v3, "Docx"

    const/4 v4, 0x1

    const-string v5, "docx"

    invoke-direct {v1, v3, v4, v5}, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->Docx:Lcom/alipay/mobile/aompfilemanager/OfficeFileType;

    .line 8
    new-instance v3, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;

    const-string v5, "Xls"

    const/4 v6, 0x2

    const-string/jumbo v7, "xls"

    invoke-direct {v3, v5, v6, v7}, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->Xls:Lcom/alipay/mobile/aompfilemanager/OfficeFileType;

    .line 10
    new-instance v5, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;

    const-string v7, "Xlsx"

    const/4 v8, 0x3

    const-string/jumbo v9, "xlsx"

    invoke-direct {v5, v7, v8, v9}, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->Xlsx:Lcom/alipay/mobile/aompfilemanager/OfficeFileType;

    .line 12
    new-instance v7, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;

    const-string v9, "PPt"

    const/4 v10, 0x4

    const-string/jumbo v11, "ppt"

    invoke-direct {v7, v9, v10, v11}, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->PPt:Lcom/alipay/mobile/aompfilemanager/OfficeFileType;

    .line 14
    new-instance v9, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;

    const-string v11, "PPtx"

    const/4 v12, 0x5

    const-string/jumbo v13, "pptx"

    invoke-direct {v9, v11, v12, v13}, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->PPtx:Lcom/alipay/mobile/aompfilemanager/OfficeFileType;

    .line 16
    new-instance v11, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;

    const-string v13, "Pdf"

    const/4 v14, 0x6

    const-string/jumbo v15, "pdf"

    invoke-direct {v11, v13, v14, v15}, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->Pdf:Lcom/alipay/mobile/aompfilemanager/OfficeFileType;

    .line 3
    const/4 v13, 0x7

    new-array v13, v13, [Lcom/alipay/mobile/aompfilemanager/OfficeFileType;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->$VALUES:[Lcom/alipay/mobile/aompfilemanager/OfficeFileType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput-object p3, p0, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->code:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/aompfilemanager/OfficeFileType;
    .locals 1

    .line 3
    const-class v0, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;

    return-object p0
.end method

.method public static values()[Lcom/alipay/mobile/aompfilemanager/OfficeFileType;
    .locals 1

    .line 3
    sget-object v0, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->$VALUES:[Lcom/alipay/mobile/aompfilemanager/OfficeFileType;

    invoke-virtual {v0}, [Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/aompfilemanager/OfficeFileType;

    return-object v0
.end method


# virtual methods
.method public final checkType(Ljava/lang/String;)Z
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->code:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final fileType()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/alipay/mobile/aompfilemanager/OfficeFileType;->code:Ljava/lang/String;

    return-object v0
.end method

.class public Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;
.super Lcom/alipay/mobile/antui/basic/AURelativeLayout;
.source "AUImagePickerSkeleton.java"

# interfaces
.implements Lcom/alipay/mobile/antui/api/AntUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$OnDataChangeListener;,
        Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$a;,
        Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$ImageCallBack;,
        Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$PickeInfo;,
        Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$OnPickerClickListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field public static partionX:F

.field public static partionY:F


# instance fields
.field private GRID_SIZE:I

.field private MAX_NUM:I

.field private RL_SPACE:F

.field private TB_SPACE:F

.field private allowDrag:Z

.field private callBack:Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$ImageCallBack;

.field private gridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field public gridSize:F

.field private layout:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

.field private onDataChangeListener:Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$OnDataChangeListener;

.field private pickerAdapter:Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;

.field private pickerClickListener:Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$OnPickerClickListener;

.field private pickerCount:Lcom/alipay/mobile/antui/basic/AUTextView;

.field private pickerTitleeDesc:Lcom/alipay/mobile/antui/basic/AUTextView;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private showBmps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$PickeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private touchX:F

.field private touchY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-string v0, "AUImagePickerSkeleton"

    sput-object v0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 58
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;-><init>(Landroid/content/Context;)V

    .line 36
    const/16 v0, 0x9

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->MAX_NUM:I

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->showBmps:Ljava/util/List;

    .line 44
    const/4 v0, 0x4

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->GRID_SIZE:I

    .line 45
    const v0, 0x40966666    # 4.7f

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->RL_SPACE:F

    .line 46
    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->TB_SPACE:F

    .line 51
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->gridSize:F

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->allowDrag:Z

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/16 v0, 0x9

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->MAX_NUM:I

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->showBmps:Ljava/util/List;

    .line 44
    const/4 v0, 0x4

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->GRID_SIZE:I

    .line 45
    const v0, 0x40966666    # 4.7f

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->RL_SPACE:F

    .line 46
    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->TB_SPACE:F

    .line 51
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->gridSize:F

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->allowDrag:Z

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;)Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$OnPickerClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;

    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->pickerClickListener:Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$OnPickerClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;

    .line 34
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->allowDrag:Z

    return v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;)F
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;

    .line 34
    iget v0, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->touchX:F

    return v0
.end method

.method static synthetic access$202(Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;F)F
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;
    .param p1, "x1"    # F

    .line 34
    iput p1, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->touchX:F

    return p1
.end method

.method static synthetic access$300(Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;)F
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;

    .line 34
    iget v0, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->touchY:F

    return v0
.end method

.method static synthetic access$302(Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;F)F
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;
    .param p1, "x1"    # F

    .line 34
    iput p1, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->touchY:F

    return p1
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->init(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V

    .line 96
    return-void
.end method

.method private updatePickerCount(I)V
    .locals 3
    .param p1, "size"    # I

    .line 119
    if-nez p1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->pickerCount:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    goto :goto_0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->pickerCount:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 124
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->pickerCount:Lcom/alipay/mobile/antui/basic/AUTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->MAX_NUM:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "typedArray"    # Landroid/content/res/TypedArray;

    .line 140
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->au_image_picker:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 141
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/alipay/mobile/antui/R$id;->picker_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    iput-object v1, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->layout:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    .line 142
    sget v1, Lcom/alipay/mobile/antui/R$id;->picker_title_count:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v1, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->pickerCount:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 143
    sget v1, Lcom/alipay/mobile/antui/R$id;->picker_title_desc:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v1, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->pickerTitleeDesc:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 144
    sget v1, Lcom/alipay/mobile/antui/R$id;->recycler:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 146
    new-instance v1, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;

    iget-object v2, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->showBmps:Ljava/util/List;

    iget v3, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->MAX_NUM:I

    invoke-direct {v1, p1, v2, v3}, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v1, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->pickerAdapter:Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;

    .line 147
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    iget v2, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->GRID_SIZE:I

    invoke-direct {v1, p1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->gridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 148
    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$a;

    iget v3, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->RL_SPACE:F

    iget v4, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->TB_SPACE:F

    invoke-direct {v2, p0, v3, v4}, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$a;-><init>(Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;FF)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 149
    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->gridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 150
    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->pickerAdapter:Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 151
    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/alipay/mobile/antui/picker/ItemDragCallback;

    iget-object v3, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->pickerAdapter:Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;

    invoke-direct {v2, v3}, Lcom/alipay/mobile/antui/picker/ItemDragCallback;-><init>(Lcom/alipay/mobile/antui/picker/ItemDragCallback$onMoveListener;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 153
    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->pickerAdapter:Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;

    new-instance v2, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$1;-><init>(Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;->setOnItemClickListener(Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter$OnItemClickListener;)V

    .line 211
    return-void
.end method

.method public initAttrStyle(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "typedArray"    # Landroid/content/res/TypedArray;

    .line 226
    return-void
.end method

.method public initContent(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "typedArray"    # Landroid/content/res/TypedArray;

    .line 216
    return-void
.end method

.method public initStyleByTheme(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 221
    return-void
.end method

.method public isAllowDrag(Z)V
    .locals 0
    .param p1, "allowDrag"    # Z

    .line 70
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->allowDrag:Z

    .line 71
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 91
    invoke-super/range {p0 .. p5}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->onLayout(ZIIII)V

    .line 92
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 3
    .param p1, "pickeInfos"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$PickeInfo;",
            ">;)V"
        }
    .end annotation

    .line 103
    if-nez p1, :cond_0

    .line 104
    return-void

    .line 106
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->showBmps:Ljava/util/List;

    .line 107
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->pickerAdapter:Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;->setmDatas(Ljava/util/List;)V

    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->pickerAdapter:Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;->notifyDataSetChanged()V

    .line 109
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->updatePickerCount(I)V

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->onDataChangeListener:Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$OnDataChangeListener;

    if-eqz v0, :cond_1

    .line 111
    invoke-interface {v0}, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$OnDataChangeListener;->onDataChanged()V

    .line 113
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AUimagePickerSkeleton:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$PickeInfo;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImagePickerView"

    invoke-static {v2, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public setGridSize(I)V
    .locals 0
    .param p1, "gridSize"    # I

    .line 80
    iput p1, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->GRID_SIZE:I

    .line 81
    return-void
.end method

.method public setImageCallBack(Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$ImageCallBack;)V
    .locals 3
    .param p1, "callBack"    # Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$ImageCallBack;

    .line 241
    iput-object p1, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->callBack:Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$ImageCallBack;

    .line 242
    sget-object v0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "callback"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->callBack:Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$ImageCallBack;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public setItemSpace(II)V
    .locals 1
    .param p1, "rlSpace"    # I
    .param p2, "tbSpace"    # I

    .line 85
    int-to-float v0, p1

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->RL_SPACE:F

    .line 86
    int-to-float v0, p2

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->TB_SPACE:F

    .line 87
    return-void
.end method

.method public setMaxNum(I)V
    .locals 1
    .param p1, "maxNum"    # I

    .line 63
    iput p1, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->MAX_NUM:I

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->pickerAdapter:Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;->setmMaxNum(I)V

    .line 67
    :cond_0
    return-void
.end method

.method public setOnDataChangeListener(Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$OnDataChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$OnDataChangeListener;

    .line 280
    iput-object p1, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->onDataChangeListener:Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$OnDataChangeListener;

    .line 281
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->pickerAdapter:Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/adapter/ImagePickerAdapter;->setOnDataChangeListener(Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$OnDataChangeListener;)V

    .line 282
    return-void
.end method

.method public setPickerClickListener(Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$OnPickerClickListener;)V
    .locals 0
    .param p1, "pickerClickListener"    # Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$OnPickerClickListener;

    .line 128
    iput-object p1, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->pickerClickListener:Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton$OnPickerClickListener;

    .line 129
    return-void
.end method

.method public setPickerTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "desc"    # Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->layout:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->setVisibility(I)V

    .line 133
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUImagePickerSkeleton;->pickerTitleeDesc:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    :cond_0
    return-void
.end method

.method public upDateTheme(Landroid/content/Context;Lcom/alipay/mobile/antui/theme/AUAbsTheme;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # Lcom/alipay/mobile/antui/theme/AUAbsTheme;

    .line 231
    return-void
.end method

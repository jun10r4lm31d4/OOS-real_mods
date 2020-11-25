.class public Lcom/oneplus/settings/ui/OPScreenColorModeView;
.super Landroid/widget/FrameLayout;
.source "OPScreenColorModeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ui/OPScreenColorModeView$MyOnPageChangeListener;
    }
.end annotation


# static fields
.field private static final LAYOUT_RES_ID:I = 0x7f0d021e

.field private static final LAYOUT_RES_ID_2K:I = 0x7f0d021f


# instance fields
.field private currIndex:I

.field private mContext:Landroid/content/Context;

.field private mPageIndicator:Lcom/oneplus/lib/design/widget/OPPageIndicator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, currIndex:I

    invoke-direct {p0, p1}, initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, currIndex:I

    invoke-direct {p0, p1}, initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, currIndex:I

    invoke-direct {p0, p1}, initView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$002(Lcom/oneplus/settings/ui/OPScreenColorModeView;I)I
    .locals 0

    iput p1, p0, currIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/settings/ui/OPScreenColorModeView;)Lcom/oneplus/lib/design/widget/OPPageIndicator;
    .locals 1

    iget-object v0, p0, mPageIndicator:Lcom/oneplus/lib/design/widget/OPPageIndicator;

    return-object v0
.end method

.method private initView(Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, mContext:Landroid/content/Context;

    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    const/16 v2, 0x5a0

    if-ne v1, v2, :cond_0

    const v2, 0x7f0d021f

    invoke-direct {p0, v2}, setLayoutResource(I)V

    goto :goto_0

    :cond_0
    const v2, 0x7f0d021e

    invoke-direct {p0, v2}, setLayoutResource(I)V

    :goto_0
    invoke-virtual {p0, p0}, onBindViewHolder(Landroid/view/View;)V

    return-void
.end method

.method private setLayoutResource(I)V
    .locals 2

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/view/View;)V
    .locals 12

    const v0, 0x7f0a07ac

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/oneplus/settings/ui/OPScreenColorModeView$MyOnPageChangeListener;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/ui/OPScreenColorModeView$MyOnPageChangeListener;-><init>(Lcom/oneplus/settings/ui/OPScreenColorModeView;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    const v1, 0x7f0a02b4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/design/widget/OPPageIndicator;

    iput-object v1, p0, mPageIndicator:Lcom/oneplus/lib/design/widget/OPPageIndicator;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0d0221

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0a031b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v7, 0x7f0805cc

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    const v9, 0x7f0805cd

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v5, 0x7f0805ce

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/oneplus/settings/ui/OPScreenColorModeView$1;

    invoke-direct {v9, p0, v5}, Lcom/oneplus/settings/ui/OPScreenColorModeView$1;-><init>(Lcom/oneplus/settings/ui/OPScreenColorModeView;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v9}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget v10, p0, currIndex:I

    invoke-virtual {v0, v10}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    iget-object v10, p0, mPageIndicator:Lcom/oneplus/lib/design/widget/OPPageIndicator;

    invoke-virtual {v9}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->setNumPages(I)V

    iget-object v10, p0, mPageIndicator:Lcom/oneplus/lib/design/widget/OPPageIndicator;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v10, v11}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->setLocation(F)V

    return-void
.end method

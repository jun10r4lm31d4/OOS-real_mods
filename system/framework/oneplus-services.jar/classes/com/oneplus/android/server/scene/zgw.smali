.class public Lcom/oneplus/android/server/scene/zgw;
.super Lcom/oneplus/android/server/scene/bud;
.source ""


# static fields
.field private static final DBG:Z

.field private static final Ob:I = 0x3e8

.field private static final Pb:Ljava/lang/String; = "RBS8PPYT2W"

.field private static final TAG:Ljava/lang/String; = "OemSceneGameModeMessage"

.field private static final VALUE_ON:Ljava/lang/String; = "1"


# instance fields
.field private Lb:Landroid/widget/ImageView;

.field private Mb:Landroid/view/View;

.field private Nb:Landroid/view/WindowManager$LayoutParams;

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/widget/ImageView;

.field private mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/oneplus/android/server/scene/vju;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/android/server/scene/bud;-><init>(Landroid/content/Context;ILcom/oneplus/android/server/scene/vju;Z)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public igw(I)V
    .locals 0

    return-void
.end method

.method public p()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/android/server/scene/bud;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105020e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/android/server/scene/bud;->Bb:Landroid/widget/RelativeLayout;

    const v2, 0x508006e

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Mb:Landroid/view/View;

    iget-object v1, p0, Mb:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v0

    iget v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Mb:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/oneplus/android/server/scene/bud;->Bb:Landroid/widget/RelativeLayout;

    const v1, 0x508006c

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, mIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oneplus/android/server/scene/bud;->Bb:Landroid/widget/RelativeLayout;

    const v1, 0x508006d

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, mTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/android/server/scene/bud;->Bb:Landroid/widget/RelativeLayout;

    const v1, 0x508006f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lb:Landroid/widget/ImageView;

    iget-object v0, p0, Lb:Landroid/widget/ImageView;

    new-instance v1, Lcom/oneplus/android/server/scene/zta;

    invoke-direct {v1, p0}, Lcom/oneplus/android/server/scene/zta;-><init>(Lcom/oneplus/android/server/scene/zgw;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, r()V

    return-void
.end method

.method public r()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/android/server/scene/bud;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/android/server/scene/bud;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "esport_mode_enabled"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/android/server/scene/bud;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/android/server/scene/rtg;->ssp(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, mIcon:Landroid/widget/ImageView;

    const v2, 0x507013c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, mIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/oneplus/android/server/scene/bud;->mContext:Landroid/content/Context;

    const v3, 0x5050100

    goto :goto_0

    :cond_0
    iget-object v1, p0, mIcon:Landroid/widget/ImageView;

    const v2, 0x5070139

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, mIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/oneplus/android/server/scene/bud;->mContext:Landroid/content/Context;

    const v3, 0x50500ff

    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v1, p0, mTitle:Landroid/widget/TextView;

    const v2, 0x50f0071

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object p0, p0, Mb:Landroid/view/View;

    const v1, 0x507021b

    goto :goto_1

    :cond_1
    iget-object v1, p0, mIcon:Landroid/widget/ImageView;

    const v2, 0x5070159

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, mIcon:Landroid/widget/ImageView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v1, p0, mTitle:Landroid/widget/TextView;

    const v2, 0x50f0073

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object p0, p0, Mb:Landroid/view/View;

    const v1, 0x5070227

    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public synthetic zta(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/oneplus/android/server/scene/bud;->Eb:Lcom/oneplus/android/server/scene/vju;

    invoke-virtual {p1}, Lcom/oneplus/android/server/scene/vju;->hide()V

    new-instance p1, Landroid/content/Intent;

    const-string v0, "oneplus.intent.action.GAME_SPACE_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/android/server/scene/bud;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "esport_mode_enabled"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/android/server/scene/bud;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

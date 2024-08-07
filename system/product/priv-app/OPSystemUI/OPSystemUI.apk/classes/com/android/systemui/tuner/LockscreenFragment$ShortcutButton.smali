.class Lcom/android/systemui/tuner/LockscreenFragment$ShortcutButton;
.super Ljava/lang/Object;
.source "LockscreenFragment.java"

# interfaces
.implements Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tuner/LockscreenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShortcutButton"
.end annotation


# instance fields
.field private final mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

.field private final mShortcut:Lcom/android/systemui/tuner/ShortcutParser$Shortcut;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/tuner/ShortcutParser$Shortcut;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, mShortcut:Lcom/android/systemui/tuner/ShortcutParser$Shortcut;

    new-instance v0, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;-><init>()V

    iput-object v0, p0, mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    iget-object v0, p0, mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->isVisible:Z

    iget-object p2, p2, Lcom/android/systemui/tuner/ShortcutParser$Shortcut;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, v0, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    iget-object v0, p0, mShortcut:Lcom/android/systemui/tuner/ShortcutParser$Shortcut;

    iget-object v0, v0, Lcom/android/systemui/tuner/ShortcutParser$Shortcut;->label:Ljava/lang/String;

    iput-object v0, p2, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 p2, 0x42000000    # 32.0f

    invoke-static {v1, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iget-object p2, p0, mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    new-instance v0, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    iget-object v1, p2, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->drawable:Landroid/graphics/drawable/Drawable;

    int-to-float p1, p1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p1, v2

    invoke-direct {v0, v1, p1}, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;F)V

    iput-object v0, p2, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->tint:Z

    return-void
.end method


# virtual methods
.method public getIcon()Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;
    .locals 0

    iget-object p0, p0, mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, mShortcut:Lcom/android/systemui/tuner/ShortcutParser$Shortcut;

    iget-object p0, p0, Lcom/android/systemui/tuner/ShortcutParser$Shortcut;->intent:Landroid/content/Intent;

    return-object p0
.end method

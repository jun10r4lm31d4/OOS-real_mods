.class public Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccessibilityActionCompat"
.end annotation


# static fields
.field public static final ACTION_ACCESSIBILITY_FOCUS:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field public static final ACTION_CLEAR_ACCESSIBILITY_FOCUS:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field public static final ACTION_CLEAR_FOCUS:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field public static final ACTION_CLEAR_SELECTION:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field public static final ACTION_CLICK:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field public static final ACTION_COLLAPSE:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field public static final ACTION_CONTEXT_CLICK:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field public static final ACTION_COPY:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field public static final ACTION_CUT:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field public static final ACTION_DISMISS:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field public static final ACTION_EXPAND:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field public static final ACTION_FOCUS:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field public static final ACTION_HIDE_TOOLTIP:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field public static final ACTION_LONG_CLICK:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field public static final ACTION_MOVE_WINDOW:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field public static final ACTION_NEXT_AT_MOVEMENT_GRANULARITY:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field public static final ACTION_NEXT_HTML_ELEMENT:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field public static final ACTION_PASTE:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field public static final ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field public static final ACTION_PREVIOUS_HTML_ELEMENT:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field public static final ACTION_SCROLL_BACKWARD:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field public static final ACTION_SCROLL_DOWN:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field public static final ACTION_SCROLL_FORWARD:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field public static final ACTION_SCROLL_LEFT:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field public static final ACTION_SCROLL_RIGHT:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field public static final ACTION_SCROLL_TO_POSITION:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field public static final ACTION_SCROLL_UP:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field public static final ACTION_SELECT:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field public static final ACTION_SET_PROGRESS:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field public static final ACTION_SET_SELECTION:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field public static final ACTION_SET_TEXT:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field public static final ACTION_SHOW_ON_SCREEN:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field public static final ACTION_SHOW_TOOLTIP:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;


# instance fields
.field final mAction:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, <init>(ILjava/lang/CharSequence;)V

    sput-object v0, ACTION_FOCUS:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    new-instance v0, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, <init>(ILjava/lang/CharSequence;)V

    sput-object v0, ACTION_CLEAR_FOCUS:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    new-instance v0, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, <init>(ILjava/lang/CharSequence;)V

    sput-object v0, ACTION_SELECT:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    new-instance v0, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/16 v2, 0x8

    invoke-direct {v0, v2, v1}, <init>(ILjava/lang/CharSequence;)V

    sput-object v0, ACTION_CLEAR_SELECTION:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    new-instance v0, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/16 v2, 0x10

    invoke-direct {v0, v2, v1}, <init>(ILjava/lang/CharSequence;)V

    sput-object v0, ACTION_CLICK:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    new-instance v0, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/16 v2, 0x20

    invoke-direct {v0, v2, v1}, <init>(ILjava/lang/CharSequence;)V

    sput-object v0, ACTION_LONG_CLICK:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    new-instance v0, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/16 v2, 0x40

    invoke-direct {v0, v2, v1}, <init>(ILjava/lang/CharSequence;)V

    sput-object v0, ACTION_ACCESSIBILITY_FOCUS:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    new-instance v0, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/16 v2, 0x80

    invoke-direct {v0, v2, v1}, <init>(ILjava/lang/CharSequence;)V

    sput-object v0, ACTION_CLEAR_ACCESSIBILITY_FOCUS:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    new-instance v0, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/16 v2, 0x100

    invoke-direct {v0, v2, v1}, <init>(ILjava/lang/CharSequence;)V

    sput-object v0, ACTION_NEXT_AT_MOVEMENT_GRANULARITY:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    new-instance v0, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/16 v2, 0x200

    invoke-direct {v0, v2, v1}, <init>(ILjava/lang/CharSequence;)V

    sput-object v0, ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    new-instance v0, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/16 v2, 0x400

    invoke-direct {v0, v2, v1}, <init>(ILjava/lang/CharSequence;)V

    sput-object v0, ACTION_NEXT_HTML_ELEMENT:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    new-instance v0, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/16 v2, 0x800

    invoke-direct {v0, v2, v1}, <init>(ILjava/lang/CharSequence;)V

    sput-object v0, ACTION_PREVIOUS_HTML_ELEMENT:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    new-instance v0, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/16 v2, 0x1000

    invoke-direct {v0, v2, v1}, <init>(ILjava/lang/CharSequence;)V

    sput-object v0, ACTION_SCROLL_FORWARD:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    new-instance v0, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/16 v2, 0x2000

    invoke-direct {v0, v2, v1}, <init>(ILjava/lang/CharSequence;)V

    sput-object v0, ACTION_SCROLL_BACKWARD:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    new-instance v0, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/16 v2, 0x4000

    invoke-direct {v0, v2, v1}, <init>(ILjava/lang/CharSequence;)V

    sput-object v0, ACTION_COPY:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    new-instance v0, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const v2, 0x8000

    invoke-direct {v0, v2, v1}, <init>(ILjava/lang/CharSequence;)V

    sput-object v0, ACTION_PASTE:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    new-instance v0, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/high16 v2, 0x10000

    invoke-direct {v0, v2, v1}, <init>(ILjava/lang/CharSequence;)V

    sput-object v0, ACTION_CUT:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    new-instance v0, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/high16 v2, 0x20000

    invoke-direct {v0, v2, v1}, <init>(ILjava/lang/CharSequence;)V

    sput-object v0, ACTION_SET_SELECTION:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    new-instance v0, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/high16 v2, 0x40000

    invoke-direct {v0, v2, v1}, <init>(ILjava/lang/CharSequence;)V

    sput-object v0, ACTION_EXPAND:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    new-instance v0, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/high16 v2, 0x80000

    invoke-direct {v0, v2, v1}, <init>(ILjava/lang/CharSequence;)V

    sput-object v0, ACTION_COLLAPSE:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    new-instance v0, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/high16 v2, 0x100000

    invoke-direct {v0, v2, v1}, <init>(ILjava/lang/CharSequence;)V

    sput-object v0, ACTION_DISMISS:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    new-instance v0, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/high16 v2, 0x200000

    invoke-direct {v0, v2, v1}, <init>(ILjava/lang/CharSequence;)V

    sput-object v0, ACTION_SET_TEXT:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    new-instance v0, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SHOW_ON_SCREEN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-direct {v0, v2}, <init>(Ljava/lang/Object;)V

    sput-object v0, ACTION_SHOW_ON_SCREEN:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    new-instance v0, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_1

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_TO_POSITION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-direct {v0, v2}, <init>(Ljava/lang/Object;)V

    sput-object v0, ACTION_SCROLL_TO_POSITION:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    new-instance v0, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_2

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    invoke-direct {v0, v2}, <init>(Ljava/lang/Object;)V

    sput-object v0, ACTION_SCROLL_UP:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    new-instance v0, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_3

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_LEFT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_3

    :cond_3
    move-object v2, v1

    :goto_3
    invoke-direct {v0, v2}, <init>(Ljava/lang/Object;)V

    sput-object v0, ACTION_SCROLL_LEFT:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    new-instance v0, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_4

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_4

    :cond_4
    move-object v2, v1

    :goto_4
    invoke-direct {v0, v2}, <init>(Ljava/lang/Object;)V

    sput-object v0, ACTION_SCROLL_DOWN:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    new-instance v0, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_5

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_RIGHT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_5

    :cond_5
    move-object v2, v1

    :goto_5
    invoke-direct {v0, v2}, <init>(Ljava/lang/Object;)V

    sput-object v0, ACTION_SCROLL_RIGHT:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    new-instance v0, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_6

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CONTEXT_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_6

    :cond_6
    move-object v2, v1

    :goto_6
    invoke-direct {v0, v2}, <init>(Ljava/lang/Object;)V

    sput-object v0, ACTION_CONTEXT_CLICK:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    new-instance v0, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_7

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_PROGRESS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_7

    :cond_7
    move-object v2, v1

    :goto_7
    invoke-direct {v0, v2}, <init>(Ljava/lang/Object;)V

    sput-object v0, ACTION_SET_PROGRESS:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    new-instance v0, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_8

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_MOVE_WINDOW:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_8

    :cond_8
    move-object v2, v1

    :goto_8
    invoke-direct {v0, v2}, <init>(Ljava/lang/Object;)V

    sput-object v0, ACTION_MOVE_WINDOW:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    new-instance v0, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-static {}, Lcom/oneplus/support/core/os/BuildCompat;->isAtLeastP()Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SHOW_TOOLTIP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_9

    :cond_9
    move-object v2, v1

    :goto_9
    invoke-direct {v0, v2}, <init>(Ljava/lang/Object;)V

    sput-object v0, ACTION_SHOW_TOOLTIP:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    new-instance v0, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-static {}, Lcom/oneplus/support/core/os/BuildCompat;->isAtLeastP()Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_HIDE_TOOLTIP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    :cond_a
    invoke-direct {v0, v1}, <init>(Ljava/lang/Object;)V

    sput-object v0, ACTION_HIDE_TOOLTIP:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, <init>(Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, mAction:Ljava/lang/Object;

    return-void
.end method

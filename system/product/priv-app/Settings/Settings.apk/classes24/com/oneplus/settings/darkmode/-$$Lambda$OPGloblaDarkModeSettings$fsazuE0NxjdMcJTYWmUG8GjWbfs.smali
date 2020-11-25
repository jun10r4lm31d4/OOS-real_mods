.class public final synthetic Lcom/oneplus/settings/darkmode/-$$Lambda$OPGloblaDarkModeSettings$fsazuE0NxjdMcJTYWmUG8GjWbfs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final synthetic f$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, f$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, f$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->lambda$initView$1$OPGloblaDarkModeSettings(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.class Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$3;
.super Ljava/lang/Object;
.source "OPGloblaDarkModeSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->lambda$onResume$0(Landroid/widget/Switch;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;Z)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;

    iput-boolean p2, p0, val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;

    invoke-virtual {v0}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-boolean v1, p0, val$enabled:Z

    const-string v2, "op_force_dark_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.class Lcom/oneplus/settings/OPCustomToneSettings$1;
.super Ljava/lang/Object;
.source "OPCustomToneSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/OPCustomToneSettings;->lambda$onCreateOptionsMenu$0(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPCustomToneSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPCustomToneSettings;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/settings/OPCustomToneSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, this$0:Lcom/oneplus/settings/OPCustomToneSettings;

    invoke-static {v0}, Lcom/oneplus/settings/OPCustomToneSettings;->access$000(Lcom/oneplus/settings/OPCustomToneSettings;)Lcom/oneplus/settings/ui/OPCustomTonePreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->saveSelectedTone()V

    return-void
.end method

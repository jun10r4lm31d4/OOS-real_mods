.class public final synthetic Lcom/oneplus/settings/ui/-$$Lambda$OPCustomTonePreference$ChooseStyleAdapter$TQOysjhtGWTNfIFmxiFZJIZ53K4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;

.field private final synthetic f$1:I

.field private final synthetic f$2:Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;ILcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, f$0:Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;

    iput p2, p0, f$1:I

    iput-object p3, p0, f$2:Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, f$0:Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;

    iget v1, p0, f$1:I

    iget-object v2, p0, f$2:Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;

    invoke-virtual {v0, v1, v2, p1}, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;->lambda$onBindViewHolder$0$OPCustomTonePreference$ChooseStyleAdapter(ILcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;Landroid/view/View;)V

    return-void
.end method

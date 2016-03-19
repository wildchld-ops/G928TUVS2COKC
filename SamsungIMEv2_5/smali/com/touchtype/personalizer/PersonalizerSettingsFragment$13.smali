.class Lcom/touchtype/personalizer/PersonalizerSettingsFragment$13;
.super Ljava/lang/Object;
.source "PersonalizerSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/touchtype/personalizer/PersonalizerSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;


# direct methods
.method constructor <init>(Lcom/touchtype/personalizer/PersonalizerSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$13;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$13;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    iget-object v1, v1, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->actionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsFragment$13;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsFragment;

    iget-object v2, v1, Lcom/touchtype/personalizer/PersonalizerSettingsFragment;->actionBarSwitch:Landroid/widget/Switch;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

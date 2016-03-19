.class Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet$3;
.super Ljava/lang/Object;
.source "AutoTextArrayAdapterTablet.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;I)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet$3;->this$0:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    iput p2, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet$3;->this$0:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    invoke-virtual {v1}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->getSelectionMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet$3;->this$0:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    invoke-virtual {v1, v2}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->setSelectionMode(Z)V

    const v1, 0x7f100016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet$3;->this$0:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    # getter for: Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->mUserWordCheckList:Ljava/util/List;
    invoke-static {v1}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->access$200(Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet$3;->val$position:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet$3;->this$0:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    # getter for: Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->mAutoTextSettings:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;
    invoke-static {v1}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->access$300(Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;)Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->startSelectionMode()V

    iget-object v1, p0, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet$3;->this$0:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    # getter for: Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->mAutoTextSettings:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;
    invoke-static {v1}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->access$300(Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;)Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.class Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4$1;
.super Ljava/lang/Object;
.source "AutoTextSettingsFragmentTablet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4;->onAddingComplete(ZLcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4$1;->this$1:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4$1;->this$1:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4;

    iget-object v0, v0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    # invokes: Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->resortWordList()V
    invoke-static {v0}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->access$100(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)V

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4$1;->this$1:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4;

    iget-object v0, v0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mAutoTextArrayAdapter:Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;
    invoke-static {v0}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->access$200(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ime/implement/setting/adapter/AutoTextArrayAdapterTablet;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4$1;->this$1:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4;

    iget-object v0, v0, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet$4;->this$0:Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;

    # getter for: Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->mParentActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;->access$000(Lcom/ime/implement/setting/AutoTextSettingsFragmentTablet;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

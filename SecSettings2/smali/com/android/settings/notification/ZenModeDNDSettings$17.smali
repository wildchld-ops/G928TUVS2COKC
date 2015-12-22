.class Lcom/android/settings/notification/ZenModeDNDSettings$17;
.super Ljava/lang/Object;
.source "ZenModeDNDSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeDNDSettings;->showConditionSelection(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

.field final synthetic val$zenModeConditionSelection:Lcom/android/settings/notification/ZenModeConditionSelection;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeDNDSettings;Lcom/android/settings/notification/ZenModeConditionSelection;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeDNDSettings$17;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    iput-object p2, p0, Lcom/android/settings/notification/ZenModeDNDSettings$17;->val$zenModeConditionSelection:Lcom/android/settings/notification/ZenModeConditionSelection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings$17;->val$zenModeConditionSelection:Lcom/android/settings/notification/ZenModeConditionSelection;

    invoke-virtual {v0}, Lcom/android/settings/notification/ZenModeConditionSelection;->confirmCondition()V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings$17;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/notification/ZenModeDNDSettings;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$1102(Lcom/android/settings/notification/ZenModeDNDSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method

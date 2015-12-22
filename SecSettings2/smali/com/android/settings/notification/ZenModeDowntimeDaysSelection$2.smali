.class Lcom/android/settings/notification/ZenModeDowntimeDaysSelection$2;
.super Ljava/lang/Object;
.source "ZenModeDowntimeDaysSelection.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;

.field final synthetic val$day:I


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection$2;->this$0:Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;

    iput p2, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection$2;->val$day:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection$2;->this$0:Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;

    # getter for: Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->mDays:Landroid/util/SparseBooleanArray;
    invoke-static {v0}, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->access$000(Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection$2;->val$day:I

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection$2;->this$0:Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;

    # getter for: Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->mDisableListeners:Z
    invoke-static {v0}, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->access$100(Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection$2;->this$0:Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection$2;->this$0:Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;

    # invokes: Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->getMode()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->access$200(Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->onChanged(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection$2;->this$0:Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;

    # setter for: Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->mDisableListeners:Z
    invoke-static {v0, v3}, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->access$102(Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;Z)Z

    const-string v0, "days:1,2,3,4,5,6,7"

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection$2;->this$0:Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;

    # invokes: Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->getMode()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->access$200(Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection$2;->this$0:Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;

    # getter for: Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->mDaysCheckBox:[Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->access$300(Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;)[Landroid/widget/CheckBox;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_1
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection$2;->this$0:Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;

    # setter for: Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->mDisableListeners:Z
    invoke-static {v0, v2}, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->access$102(Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;Z)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection$2;->this$0:Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;

    # getter for: Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->mDaysCheckBox:[Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->access$300(Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;)[Landroid/widget/CheckBox;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method

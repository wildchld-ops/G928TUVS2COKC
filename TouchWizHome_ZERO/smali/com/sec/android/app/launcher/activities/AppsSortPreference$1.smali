.class Lcom/sec/android/app/launcher/activities/AppsSortPreference$1;
.super Ljava/lang/Object;
.source "AppsSortPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/AppsSortPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/AppsSortPreference;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/AppsSortPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/AppsSortPreference$1;->this$0:Lcom/sec/android/app/launcher/activities/AppsSortPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/AppsSortPreference$1;->this$0:Lcom/sec/android/app/launcher/activities/AppsSortPreference;

    # setter for: Lcom/sec/android/app/launcher/activities/AppsSortPreference;->mClickedIndex:I
    invoke-static {v0, p2}, Lcom/sec/android/app/launcher/activities/AppsSortPreference;->access$002(Lcom/sec/android/app/launcher/activities/AppsSortPreference;I)I

    return-void
.end method

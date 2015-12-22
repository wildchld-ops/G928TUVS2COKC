.class Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$2;
.super Ljava/lang/Object;
.source "SearchAppList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->setFolderMultiSelectionView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$2;->this$0:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$2;->this$0:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;

    # invokes: Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->addToFolder()V
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->access$100(Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;)V

    return-void
.end method

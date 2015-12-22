.class public Lcom/android/phone/callsettings/IpCallDB;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "IpCallDB.java"


# static fields
.field public static final defaultIpNumberList:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "AUTO"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "17901"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "17911"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "17951"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/callsettings/IpCallDB;->defaultIpNumberList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "ipcall.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object p1, p0, Lcom/android/phone/callsettings/IpCallDB;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const-string v1, "CREATE TABLE ip_call (_id INTEGER PRIMARY KEY AUTOINCREMENT, ipcall_number TEXT NOT NULL,edit_checked INTEGER NOT NULL);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "IpCallDB"

    const-string v2, "CREATE TABLE ip_call (_id INTEGER PRIMARY KEY AUTOINCREMENT, ipcall_number TEXT NOT NULL,edit_checked INTEGER NOT NULL);"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/phone/callsettings/IpCallDB;->defaultIpNumberList:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT INTO ip_call (\'IPCALL_NUMBER\', \'EDIT_CHECKED\') values (\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/callsettings/IpCallDB;->defaultIpNumberList:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' , 1);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    const-string v0, "IpCallDB"

    const-string v1, "onUpgrade"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DROP TABLE IF EXISTS ip_call"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/IpCallDB;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

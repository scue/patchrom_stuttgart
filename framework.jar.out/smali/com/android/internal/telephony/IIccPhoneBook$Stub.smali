.class public abstract Lcom/android/internal/telephony/IIccPhoneBook$Stub;
.super Landroid/os/Binder;
.source "IIccPhoneBook.java"

# interfaces
.implements Lcom/android/internal/telephony/IIccPhoneBook;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IIccPhoneBook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IIccPhoneBook"

.field static final TRANSACTION_getAdnRecordsInEf:I = 0x1

.field static final TRANSACTION_getAdnRecordsSize:I = 0x4

.field static final TRANSACTION_getAnrCountsSize:I = 0x6

.field static final TRANSACTION_getEmailRecordsSize:I = 0x5

.field static final TRANSACTION_getInsertIndex:I = 0xa

.field static final TRANSACTION_getIshaveAnrField:I = 0x8

.field static final TRANSACTION_getIshaveSneField:I = 0x9

.field static final TRANSACTION_hasEmailInIccCard:I = 0x7

.field static final TRANSACTION_updateAdnRecordsInEfByIndex:I = 0x3

.field static final TRANSACTION_updateAdnRecordsInEfBySearch:I = 0x2

.field static final TRANSACTION_getFreeAdn:I = 0x5

.field static final TRANSACTION_getAdnCapacity:I = 0x6

# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 28
    const-string v0, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;
    .locals 2
    .parameter "obj"

    .prologue
    .line 36
    if-nez p0, :cond_0

    .line 37
    const/4 v0, 0x0

    .line 43
    :goto_0
    return-object v0

    .line 39
    :cond_0
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 40
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/IIccPhoneBook;

    if-eqz v1, :cond_1

    .line 41
    check-cast v0, Lcom/android/internal/telephony/IIccPhoneBook;

    goto :goto_0

    .line 43
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 47
    return-object p0
.end method

#.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
#    .locals 16
#    .parameter "code"
#    .parameter "data"
#    .parameter "reply"
#    .parameter "flags"
#    .annotation system Ldalvik/annotation/Throws;
#        value = {
#            Landroid/os/RemoteException;
#        }
#    .end annotation
#
#    .prologue
#    .line 51
#    sparse-switch p1, :sswitch_data_0
#
#    .line 186
#    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
#
#    move-result v1
#
#    :goto_0
#    return v1
#
#    .line 55
#    :sswitch_0
#    const-string v1, "com.android.internal.telephony.IIccPhoneBook"
#
#    move-object/from16 v0, p3
#
#    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
#
#    .line 56
#    const/4 v1, 0x1
#
#    goto :goto_0
#
#    .line 60
#    :sswitch_1
#    const-string v1, "com.android.internal.telephony.IIccPhoneBook"
#
#    move-object/from16 v0, p2
#
#    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
#
#    .line 62
#    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I
#
#    move-result v2
#
#    .line 63
#    .local v2, _arg0:I
#    move-object/from16 v0, p0
#
#    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getAdnRecordsInEf(I)Ljava/util/List;
#
#    move-result-object v15
#
#    .line 64
#    .local v15, _result:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/AdnRecord;>;"
#    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V
#
#    .line 65
#    move-object/from16 v0, p3
#
#    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V
#
#    .line 66
#    const/4 v1, 0x1
#
#    goto :goto_0
#
#    .line 70
#    .end local v2           #_arg0:I
#    .end local v15           #_result:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/AdnRecord;>;"
#    :sswitch_2
#    const-string v1, "com.android.internal.telephony.IIccPhoneBook"
#
#    move-object/from16 v0, p2
#
#    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
#
#    .line 72
#    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I
#
#    move-result v2
#
#    .line 74
#    .restart local v2       #_arg0:I
#    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
#
#    move-result-object v3
#
#    .line 76
#    .local v3, _arg1:Ljava/lang/String;
#    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
#
#    move-result-object v4
#
#    .line 78
#    .local v4, _arg2:Ljava/lang/String;
#    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;
#
#    move-result-object v5
#
#    .line 80
#    .local v5, _arg3:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
#    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
#
#    move-result-object v6
#
#    .line 82
#    .local v6, _arg4:Ljava/lang/String;
#    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
#
#    move-result-object v7
#
#    .line 84
#    .local v7, _arg5:Ljava/lang/String;
#    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
#
#    move-result-object v8
#
#    .line 86
#    .local v8, _arg6:Ljava/lang/String;
#    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
#
#    move-result-object v9
#
#    .line 88
#    .local v9, _arg7:Ljava/lang/String;
#    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;
#
#    move-result-object v10
#
#    .line 90
#    .local v10, _arg8:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
#    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
#
#    move-result-object v11
#
#    .line 92
#    .local v11, _arg9:Ljava/lang/String;
#    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
#
#    move-result-object v12
#
#    .line 94
#    .local v12, _arg10:Ljava/lang/String;
#    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
#
#    move-result-object v13
#
#    .local v13, _arg11:Ljava/lang/String;
#    move-object/from16 v1, p0
#
#    .line 95
#    invoke-virtual/range {v1 .. v13}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
#
#    move-result v14
#
#    .line 96
#    .local v14, _result:Z
#    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V
#
#    .line 97
#    if-eqz v14, :cond_0
#
#    const/4 v1, 0x1
#
#    :goto_1
#    move-object/from16 v0, p3
#
#    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
#
#    .line 98
#    move-object/from16 v0, p3
#
#    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V
#
#    .line 99
#    move-object/from16 v0, p3
#
#    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V
#
#    .line 100
#    const/4 v1, 0x1
#
#    goto :goto_0
#
#    .line 97
#    :cond_0
#    const/4 v1, 0x0
#
#    goto :goto_1
#
#    .line 104
#    .end local v2           #_arg0:I
#    .end local v3           #_arg1:Ljava/lang/String;
#    .end local v4           #_arg2:Ljava/lang/String;
#    .end local v5           #_arg3:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
#    .end local v6           #_arg4:Ljava/lang/String;
#    .end local v7           #_arg5:Ljava/lang/String;
#    .end local v8           #_arg6:Ljava/lang/String;
#    .end local v9           #_arg7:Ljava/lang/String;
#    .end local v10           #_arg8:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
#    .end local v11           #_arg9:Ljava/lang/String;
#    .end local v12           #_arg10:Ljava/lang/String;
#    .end local v13           #_arg11:Ljava/lang/String;
#    .end local v14           #_result:Z
#    :sswitch_3
#    const-string v1, "com.android.internal.telephony.IIccPhoneBook"
#
#    move-object/from16 v0, p2
#
#    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
#
#    .line 106
#    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I
#
#    move-result v2
#
#    .line 108
#    .restart local v2       #_arg0:I
#    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
#
#    move-result-object v3
#
#    .line 110
#    .restart local v3       #_arg1:Ljava/lang/String;
#    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
#
#    move-result-object v4
#
#    .line 112
#    .restart local v4       #_arg2:Ljava/lang/String;
#    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;
#
#    move-result-object v5
#
#    .line 114
#    .restart local v5       #_arg3:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
#    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
#
#    move-result-object v6
#
#    .line 116
#    .restart local v6       #_arg4:Ljava/lang/String;
#    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
#
#    move-result-object v7
#
#    .line 118
#    .restart local v7       #_arg5:Ljava/lang/String;
#    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I
#
#    move-result v8
#
#    .line 120
#    .local v8, _arg6:I
#    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
#
#    move-result-object v9
#
#    .restart local v9       #_arg7:Ljava/lang/String;
#    move-object/from16 v1, p0
#
#    .line 121
#    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
#
#    move-result v14
#
#    .line 122
#    .restart local v14       #_result:Z
#    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V
#
#    .line 123
#    if-eqz v14, :cond_1
#
#    const/4 v1, 0x1
#
#    :goto_2
#    move-object/from16 v0, p3
#
#    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
#
#    .line 124
#    move-object/from16 v0, p3
#
#    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V
#
#    .line 125
#    const/4 v1, 0x1
#
#    goto/16 :goto_0
#
#    .line 123
#    :cond_1
#    const/4 v1, 0x0
#
#    goto :goto_2
#
#    .line 129
#    .end local v2           #_arg0:I
#    .end local v3           #_arg1:Ljava/lang/String;
#    .end local v4           #_arg2:Ljava/lang/String;
#    .end local v5           #_arg3:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
#    .end local v6           #_arg4:Ljava/lang/String;
#    .end local v7           #_arg5:Ljava/lang/String;
#    .end local v8           #_arg6:I
#    .end local v9           #_arg7:Ljava/lang/String;
#    .end local v14           #_result:Z
#    :sswitch_4
#    const-string v1, "com.android.internal.telephony.IIccPhoneBook"
#
#    move-object/from16 v0, p2
#
#    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
#
#    .line 131
#    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I
#
#    move-result v2
#
#    .line 132
#    .restart local v2       #_arg0:I
#    move-object/from16 v0, p0
#
#    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getAdnRecordsSize(I)[I
#
#    move-result-object v14
#
#    .line 133
#    .local v14, _result:[I
#    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V
#
#    .line 134
#    move-object/from16 v0, p3
#
#    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeIntArray([I)V
#
#    .line 135
#    const/4 v1, 0x1
#
#    goto/16 :goto_0
#
#    .line 139
#    .end local v2           #_arg0:I
#    .end local v14           #_result:[I
#    :sswitch_5
#    const-string v1, "com.android.internal.telephony.IIccPhoneBook"
#
#    move-object/from16 v0, p2
#
#    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
#
#    .line 140
#    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getEmailRecordsSize()[I
#
#    move-result-object v14
#
#    .line 141
#    .restart local v14       #_result:[I
#    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V
#
#    .line 142
#    move-object/from16 v0, p3
#
#    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeIntArray([I)V
#
#    .line 143
#    const/4 v1, 0x1
#
#    goto/16 :goto_0
#
#    .line 147
#    .end local v14           #_result:[I
#    :sswitch_6
#    const-string v1, "com.android.internal.telephony.IIccPhoneBook"
#
#    move-object/from16 v0, p2
#
#    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
#
#    .line 148
#    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getAnrCountsSize()I
#
#    move-result v14
#
#    .line 149
#    .local v14, _result:I
#    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V
#
#    .line 150
#    move-object/from16 v0, p3
#
#    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V
#
#    .line 151
#    const/4 v1, 0x1
#
#    goto/16 :goto_0
#
#    .line 155
#    .end local v14           #_result:I
#    :sswitch_7
#    const-string v1, "com.android.internal.telephony.IIccPhoneBook"
#
#    move-object/from16 v0, p2
#
#    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
#
#    .line 156
#    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->hasEmailInIccCard()Z
#
#    move-result v14
#
#    .line 157
#    .local v14, _result:Z
#    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V
#
#    .line 158
#    if-eqz v14, :cond_2
#
#    const/4 v1, 0x1
#
#    :goto_3
#    move-object/from16 v0, p3
#
#    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
#
#    .line 159
#    const/4 v1, 0x1
#
#    goto/16 :goto_0
#
#    .line 158
#    :cond_2
#    const/4 v1, 0x0
#
#    goto :goto_3
#
#    .line 163
#    .end local v14           #_result:Z
#    :sswitch_8
#    const-string v1, "com.android.internal.telephony.IIccPhoneBook"
#
#    move-object/from16 v0, p2
#
#    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
#
#    .line 164
#    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getIshaveAnrField()Z
#
#    move-result v14
#
#    .line 165
#    .restart local v14       #_result:Z
#    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V
#
#    .line 166
#    if-eqz v14, :cond_3
#
#    const/4 v1, 0x1
#
#    :goto_4
#    move-object/from16 v0, p3
#
#    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
#
#    .line 167
#    const/4 v1, 0x1
#
#    goto/16 :goto_0
#
#    .line 166
#    :cond_3
#    const/4 v1, 0x0
#
#    goto :goto_4
#
#    .line 171
#    .end local v14           #_result:Z
#    :sswitch_9
#    const-string v1, "com.android.internal.telephony.IIccPhoneBook"
#
#    move-object/from16 v0, p2
#
#    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
#
#    .line 172
#    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getIshaveSneField()Z
#
#    move-result v14
#
#    .line 173
#    .restart local v14       #_result:Z
#    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V
#
#    .line 174
#    if-eqz v14, :cond_4
#
#    const/4 v1, 0x1
#
#    :goto_5
#    move-object/from16 v0, p3
#
#    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
#
#    .line 175
#    const/4 v1, 0x1
#
#    goto/16 :goto_0
#
#    .line 174
#    :cond_4
#    const/4 v1, 0x0
#
#    goto :goto_5
#
#    .line 179
#    .end local v14           #_result:Z
#    :sswitch_a
#    const-string v1, "com.android.internal.telephony.IIccPhoneBook"
#
#    move-object/from16 v0, p2
#
#    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
#
#    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getInsertIndex()I
#
#    move-result v14
#
#    .local v14, _result:I
#    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V
#
#    move-object/from16 v0, p3
#
#    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V
#
#    const/4 v1, 0x1
#
#    goto/16 :goto_0
#
#    .end local v1           #_arg0:I
#    .end local v7           #_result:[I
#    :sswitch_miui_add1
#    const-string v0, "com.android.internal.telephony.IIccPhoneBook"
#
#    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
#
#    invoke-virtual {p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getFreeAdn()I
#
#    move-result v7
#
#    .local v7, _result:I
#    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
#
#    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V
#
#    goto/16 :goto_0
#
#    .end local v7           #_result:I
#    :sswitch_miui_add2
#    const-string v0, "com.android.internal.telephony.IIccPhoneBook"
#
#    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
#
#    invoke-virtual {p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getAdnCapacity()I
#
#    move-result v7
#
#    .restart local v7       #_result:I
#    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
#
#    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V
#
#    goto/16 :goto_0
#
#    nop
#
#    :sswitch_data_0
#    .sparse-switch
##        0x1 -> :sswitch_1
##        0x2 -> :sswitch_2
##        0x3 -> :sswitch_3
##        0x4 -> :sswitch_4
##        0x5 -> :sswitch_5
##        0x6 -> :sswitch_6
##        0x7 -> :sswitch_7
##        0x8 -> :sswitch_8
##        0x9 -> :sswitch_9
##        0xa -> :sswitch_a
##        0x5f4e5446 -> :sswitch_0
#        0x1 -> :sswitch_1
#        0x2 -> :sswitch_2
#        0x3 -> :sswitch_3
#        0x4 -> :sswitch_4
#        0x5 -> :sswitch_miui_add1
#        0x6 -> :sswitch_miui_add2
#        0x5f4e5446 -> :sswitch_0
#    .end sparse-switch
#.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_0
    return v9

    :sswitch_0
    const-string v0, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v0, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getAdnRecordsInEf(I)Ljava/util/List;

    move-result-object v8

    .local v8, _result:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/AdnRecord;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .end local v1           #_arg0:I
    .end local v8           #_result:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/AdnRecord;>;"
    :sswitch_2
    const-string v0, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .local v4, _arg3:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, _arg4:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, _arg5:Ljava/lang/String;
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_0

    move v0, v9

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    move v0, v10

    goto :goto_1

    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v5           #_arg4:Ljava/lang/String;
    .end local v6           #_arg5:Ljava/lang/String;
    .end local v7           #_result:Z
    :sswitch_3
    const-string v0, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #_arg4:Ljava/lang/String;
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v7

    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_1

    move v10, v9

    :cond_1
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:I
    .end local v5           #_arg4:Ljava/lang/String;
    .end local v7           #_result:Z
    :sswitch_4
    const-string v0, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getAdnRecordsSize(I)[I

    move-result-object v7

    .local v7, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .end local v1           #_arg0:I
    .end local v7           #_result:[I
    :sswitch_miui_add1
    const-string v0, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getFreeAdn()I

    move-result v7

    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v7           #_result:I
    :sswitch_miui_add2
    const-string v0, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getAdnCapacity()I

    move-result v7

    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_miui_add1
        0x6 -> :sswitch_miui_add2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

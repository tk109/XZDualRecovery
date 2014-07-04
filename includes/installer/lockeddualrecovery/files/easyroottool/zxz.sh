#!/system/bin/sh

#for older devices, by Androxyde and [NUT]
RICPATH=`ps | /data/local/tmp/busybox grep "bin/ric" | /data/local/tmp/busybox awk '{ print $NF }'`
if [ "$RICPATH" != "" ]; then
	mount -o remount,rw / && mv ${RICPATH} ${RICPATH}c && /data/local/tmp/busybox pkill -f ${RICPATH}
else
	#Kernel module by MohammadAG
	insmod /data/local/tmp/wp_mod.ko
fi

mount -o remount,rw /system
exit

ELF          (            �c     4     ( , )   ���/�8@-� P��@�� ������ ���������� ��8@������p@-�@0�� @��P�� `�� ����, ������ �������� �������� ����p@������        @-�, ��,��, ������(��( ������$ ������ ������  �����a   E   $   ~   e   �           ����   ���8   �������� �             ��         license=GPL version=0.1 description=Defeat system write protect author=flar2 / MohammadAG srcversion=3DEB83AEA2854F1C1B3B5B3 depends= vermagic=3.4.0-perf-ge4322cd-dirty SMP preempt mod_unload modversions ARMv7  <6>Hooking function 0x%p with 0x%p
 <6>wp_xperia_mod: %s version %s
 Defeat system write protect 0.1 <6>wp_xperia_mod: by %s
 flar2 / MohammadAG sony_ric_enabled   {!��module_layout                                               �X.__aeabi_unwind_cpp_pr1                                      A��kallsyms_lookup_name                                        I��'printk                                                      
�Amem_text_write_kernel_word                                  ���__aeabi_unwind_cpp_pr0                                                  wp_mod                                                                                                                                                                                                                                                                                                                                                               GNU h^���� y�vD�Rl���   ���� |                         0   D����        8   T   D����            T   D�� �       B	  u  �          0               �  1   H   H    �  U   Z   �  g   �  �  @  int   �   s8 *a   �  Z   	r  &�   �  
��   �  �}   #  	�  ݻ   �  �  #  �  # 0
  �  # �   k	    
1  m
  	1  #  H   	�  
  	  \  �	  6  #  Ap  �  BA   �  @�  \  #  	@  Lp  	�  ��   U   1�  m
  2�  # r  3�   # 	�	  5�  1   �  H     �	  v  j   �  �  U  
  �       &V  �   ;  �	       =  �  �   �  4[  S  \  #   ]1   #0 �   �  H    �   i�  x j�  #  Z   �  H    |  qx  f   �       s   [  1  �  �    �   	�  
�  G  �  �  K        
  �  �  /       �  [  �    I   �  ��  �
     �	  s  	  �   O  (��  �  ��  #  �   �  H    r  ��  �   �  �  '
   �  $�>  
   �}   # �  �}   #t  �}   #�  �>  # �   N  H      D�  pcp ��  # ,  ��   #$�  ��  #% �   �  H    �  ��  �   l  y  .   �  C�  �  L8   # �  M8   # a  �P�  �   T�  # -  [1   #�  e�  #�  k1   #  u�  # m
  y�  #$/  |�   #(�  1   #,1  �1   #0�  ��   #4�  �   #8w	  �  #��   �H   #��  �H   #��  �}   #��  ��  #��	  ��  #�O  ��  #�(  ��  #��  �1   #��	  �1   #�	  �  #�r
  �H   #�c  ��  #�b
  �&  #��   �1   #��  �1   #��  �
  #�
  �1   #�]  �1   #��  �1   #�
  �O   #� 1   �  H    N  V    H   
 1   �  &  H    �  5
  ��
  �  ��  # �  ��  #��  �}   #��  �  #�A
  ��  #�z  �1   #�V  �1   #�N  �1   #�j  �}   #�0   ��  #��
  �  #��  �}   #�4	  ��  #� ,  _  q<  a  r<  # �  s}   # �     $�n  �  �t  # X
  �z  # 5  n    �  H    �  �  H    B  �  H     �
  �  �  	�  �  	�  #  �
  
g�     �	  �  �   #	     �   �  �  
  �     ^	  k    (	  �   �     i     D  }          }  #	     8       �	  !1	      !<	  >   "G	  \   "R	  z    #�  8   �   �   .
  $k    �   %new   �   -	   .
  &#	  \       )'<	  ��	   '1	  T(   )G	  T)R	  ��	      h   >
  H    *g  ,}       T   
  Z   f
  H    +?  9w
  @   V
  Z   �
  H   ' +  :�
     |
  Z   �
  H    +�  ;�
     �
  +w  <�
      �
  ,	  #H   }   �
  - ,   �
  Z     - .�	  �    ,<   
}   ,L  T}   ,�   3}   ,f  	PU  Z  `  �  1   {  H    H     .v  	��  e  .G
  ],  ,�	  �}    �   U  �  �  �  �   �   �  �   g  h  �  �  W  M   �  int �  f   �  �    s8 *-   s16 -;   u16 .M   H  �   �   f    �   	�   �  �
  L  Gf     HT   �   �  M   �  &�   �  P  ?�   |  D�   
�1  <  �T   #    �  Z  �e  �  �e  # )  �e  # <  s  T     �  
�  �  �   # $  �   #  M   #�  M   #
 /  �  
�  �  	�  #  f   Z  
�  C    ]  �  #  A(  Z  B�     @=    #    L(  �  �1  �  1|  �  2=  # �  3<  # H  5S  �   �  f     �  
v�  �   �    ;  P  <   �  �  	&     �  8  3    8    -     4	[7  )  	\7  #    	]�   #0 <  G  f    �   	i`  x 	j`  #  �   o  f    �  	q0  �   �  +  W  1  �  �  �  �  �  z  	,  
�    �
  �  �  �  
  `  �  j  �  �  �  �       �     =  	�a  |   �
  f  <  t  0   g  (	�|  �  	�|  #  <  �  f    k  	۱  �   x  x  �   �  $	��  �  	�T   # V  	�T   #/  	�T   #�  	��  # <    f    �  D	�=  pcp 	�  # �  	�{   #$|  	�=  #% {   M  f    P  	�r     �  a  �   w  	C�  �  	L�   # H  	M�   # �  �	P�  r  	T�  # �  	[�   #�  	e�  #  	k�   #0  	u�  # �  	y=  #$Z  	|�   #(�  	�   #,d  	��   #0@  	��   #4  	��  #8p  	��  #��  	�f   #�)  	�f   #��  	�T   #��  	�G  #�  	�=  #�g  	�a  #��  	�r  #�u  	��   #��  	��   #�i  	��  #��  	�f   #��  	�G  #�)  	��  #�:  	��   #�!  	��   #��  	��  #��  	��   #��  	��   #��  	��   #��  	��   #� �   �  f        �  f   
 �   H  �  f    |  �  �	��  n  	�B	  # �  	�R	  #�&  	�T   #��  	��  #�B  	�h	  #�  	��   #��  	��   #��  	��   #��  	�T   #��  	�|  #��  	��  #��  	�T   #��  	�M  #� �  y  	q�  �  	r�  # \  	sT   # �  �  $	�&	  D  	�,	  # D  	�2	  # I  &	  �  B	  f    �  R	  f    �  b	  f     +  b	  �  �	  F  �  #  �	  �	  k   f   J  g�	  <   �  �  �   �  [   �  B     [   F  �H
  �  ��	  #   ��	  #�  ��	  #r  �4   #�  �4   #  ��	  # �  ��	  �  r
  �   �  n   4  (�
  �  )S
  # �  *�
  #�  +�
  #�  ,   #�  -�	  # k  �
   �
  �
  �
   �
  !�
  �
  �
  �
  �
    /  �  �   #   �   # 5  �  $<�  �  =�   # �  ><  #;  ?/  #�  @  #�
  A_  #sd Bk  #  C�  #"�  Df   # "$  Ef   # "]  Ff   # "�  Gf   # "g  Hf   #    �  �  p;  �  qU  # `  rz  #�  s�  #    U  /  �  �    ;     z  /  �  �      [   �
  �  /  �   �  	  �    �  �  1  #  �  4�  �  �<  # �  �=  #s  �5  #�  ��  #0 �  �  l_  �  m}  # �  n�  #�  o�  #N  p�  #�  q�  #   /  e  }  /   q  �  	   �  �  /   �  	r
  �   �
  �  /   �  #�  �t  �  u  # `  vT   #�buf w  #�f  xT   #� �     f    �   /  $f   � �  {f  �  |{  # �  }�  #{  ~�  #  T   {    /   	�  f   �   �    /   	�  �   T   �    /  �   �  	�  �  �  	/  �  )  set +�  # get -�  #�  /�	  #  T   (  �   (   .  	3  ;  2�  �  3�   # ops 4]  #  5�   #  6�   #
�  #    T   �  �   (   �  7�  %arg 8k  %str 9�  %arr :R   �  ?�  ]  @f   # I  A�   # �  	�  /  ER  max Gf   # [  Hf   #num I�	  #ops J]  #�  Kk  # X  	�  c  	�  �  ��  3  �1  #  ,  �  s  k  # d  k  # �  �  �  �   # key  h  #  !y  #�  "y  ##  #�  # �    	  �    ?  �  �   # �  �   # l  �   x  f  �
  �  .   �  �  �  �  #  �  �  f    �  �  �  @�  crc �   # �   �  # �   �  f   ;   0%   s  &5  # mod '�  #$�  (/  #(mp )�  #, #:  hܧ  �  ު  # �  �<  #�  ��  #=  ��  #H�  �4  #x�  �   #|"  �   #�  �/  #��  ��  #��  ��  #��  �f   #�kp �  #��  �f   #��  �f   #�L  ��  #�X  ��  #��  �  #�q  	�  #��  
f   #��  f   #�    #��  m  #��  k  #�i  k  #��  f   #��  f   #��  f   #�\  f   #�   f   #��   f   #�D  #l  #�  %f   #��  )f   #��  *<  #��  +  #�  4   #��  4   #�e  5f   #�R  5f   #�(  6�   #��  6�   #�5  9,  #��  <8  #�i  A�   #�  Ek  #��  Ff   #��  Jf   #��  K  #��  Rf   #��  S>  #�P  VJ  #��  Wf   #��
  `<  #��  b<  #�  e�  #�m  hy  #��  jV  #�    �  �    ,  [  -  # �  .@  #`  0e  #  2|  #A  3�  #�  4�  #    4  4  :  �    �  �       e  4  :  �      F  |  �  �    k   T   �  �   �  �  �   �  �  ��  I   �  J   %  ��  d  ؛   # �  ٛ   # �  	    	�   3  �    �  H
  U  &  p  2  �   U  P  D  �  �   l  f   L &�  }  �   	\  �  �  f    &[  �      	�  �   �  f    &  �  }   	�  �   �  f   " &�  �  Z   	�  '�  #f   T     ( 'K    �   $  ( )B  �2  	  '  
T   '  	TT   'n  3T   'K  Pk  	p  v  	n	  �   �  f    f     )�  ��  	{  )�  	]�  '�  �T   *�          %RU�B�B  $ >  I  ! I/   I  & I  $ >   :;I  	 :;I  
:;   :;I8
  :;      <  5 I  :;   :;I   I8
  :;  (   :;   :;I8
  ! I  :;  :;   :;I8
  :;  .?:;'    :;I  4 :;I  . :;'I@
   .1@  ! 1  "4 1  #.?:;'@  $ :;I  % :;I  &1RUXY  ' 1
  (U  )4 1
  *. :;'I@  +4 :;I
  ,4 :;I?<  -!   .4 :;I?<   %�B�B  $ >   :;I  $ >   :;I  I  ! I/   I  	& I  
:;   :;I8
  :;      'I   '   <  5 I  :;   :;I   I8
  :;  (   :;   :;I8
  ! I  :;  :;   :;I8
  :;  '   I   'I  !&   " :;I8
  #:;  $! I/  % :;I  &4 :;I
  '4 :;I?<  (!   )4 :;I?<  *4 :;I?
          }    8    }               P    8    U               Q   8    T               P   8    U               Q   8    T        8   <    } <   �    }        8   X    PX   [    Q[   �    T        8   T    QT   [    R[   �    U                }    T    }        �        �  ^	  sony_ric_enabled u	  arm_write_hook �	  hijack_start >
  wp_mod_init f
  __mod_author57 �
  __mod_description58 �
  __mod_version59 �
  __mod_license60     q    �  �  l  __mod_vermagic5 �  ____versions �  __module_depends �  __mod_srcversion31 �  __this_module     c       �  1   long unsigned int H   unsigned int Z   char a   signed char h   unsigned char o   short int v   short unsigned int }   int �   long long int �   long long unsigned int �   s8 �   long int �   _Bool �   bool �   atomic_t �   list_head 6  arch_spinlock_t A  raw_spinlock p  spinlock �  spinlock_t �  atomic_long_t �  __wait_queue_head �  wait_queue_head_t �  node_states �  N_POSSIBLE �  N_ONLINE �  N_NORMAL_MEMORY �  N_HIGH_MEMORY   N_CPU 
  NR_NODE_STATES V  free_area �  zone_padding �  zone_stat_item �  NR_FREE_PAGES �  NR_LRU_BASE �  NR_INACTIVE_ANON �  NR_ACTIVE_ANON �  NR_INACTIVE_FILE �  NR_ACTIVE_FILE �  NR_UNEVICTABLE �  NR_MLOCK �  NR_ANON_PAGES �  NR_FILE_MAPPED �  NR_FILE_PAGES   NR_FILE_DIRTY   NR_WRITEBACK   NR_SLAB_RECLAIMABLE   NR_SLAB_UNRECLAIMABLE   NR_PAGETABLE #  NR_KERNEL_STACK )  NR_UNSTABLE_NFS /  NR_BOUNCE 5  NR_VMSCAN_WRITE ;  NR_VMSCAN_IMMEDIATE A  NR_WRITEBACK_TEMP G  NR_ISOLATED_ANON M  NR_ISOLATED_FILE S  NR_SHMEM Y  NR_DIRTIED _  NR_WRITTEN e  NR_ANON_TRANSPARENT_HUGEPAGES k  NR_FREE_CMA_PAGES q  NR_VM_ZONE_STAT_ITEMS x  lru_list �  LRU_INACTIVE_ANON �  LRU_ACTIVE_ANON �  LRU_INACTIVE_FILE �  LRU_ACTIVE_FILE �  LRU_UNEVICTABLE �  NR_LRU_LISTS �  lruvec �  zone_watermarks �  WMARK_MIN �  WMARK_LOW �  WMARK_HIGH �  NR_WMARK �  per_cpu_pages N  per_cpu_pageset �  zone_type �  ZONE_NORMAL �  ZONE_HIGHMEM �  ZONE_MOVABLE �  __MAX_NR_ZONES �  zone_reclaim_stat �  zone   zoneref B  zonelist ,  pglist_data �  cpumask �  pcpu_fc �  PCPU_FC_AUTO �  PCPU_FC_EMBED �  PCPU_FC_PAGE �  PCPU_FC_NR     S	   �  �  -   signed char 4   unsigned char ;   short int M   short unsigned int B   __u16 T   int f   unsigned int [   __u32 m   long long int t   long long unsigned int {   s8 �   s16 �   u16 �   long unsigned int �   char �   long int �   __kernel_size_t �   __kernel_ssize_t �   umode_t �   _Bool �   bool   size_t   ssize_t 1  atomic_t <  list_head �  bug_entry �  arch_spinlock_t �  raw_spinlock (  spinlock =  spinlock_t H  atomic_long_t S  __wait_queue_head |  wait_queue_head_t �  node_states �  N_POSSIBLE �  N_ONLINE �  N_NORMAL_MEMORY �  N_HIGH_MEMORY �  N_CPU �  NR_NODE_STATES   free_area G  zone_padding o  zone_stat_item {  NR_FREE_PAGES �  NR_LRU_BASE �  NR_INACTIVE_ANON �  NR_ACTIVE_ANON �  NR_INACTIVE_FILE �  NR_ACTIVE_FILE �  NR_UNEVICTABLE �  NR_MLOCK �  NR_ANON_PAGES �  NR_FILE_MAPPED �  NR_FILE_PAGES �  NR_FILE_DIRTY �  NR_WRITEBACK �  NR_SLAB_RECLAIMABLE �  NR_SLAB_UNRECLAIMABLE �  NR_PAGETABLE �  NR_KERNEL_STACK �  NR_UNSTABLE_NFS �  NR_BOUNCE �  NR_VMSCAN_WRITE �  NR_VMSCAN_IMMEDIATE �  NR_WRITEBACK_TEMP �  NR_ISOLATED_ANON   NR_ISOLATED_FILE   NR_SHMEM   NR_DIRTIED   NR_WRITTEN   NR_ANON_TRANSPARENT_HUGEPAGES #  NR_FREE_CMA_PAGES )  NR_VM_ZONE_STAT_ITEMS 0  lru_list <  LRU_INACTIVE_ANON B  LRU_ACTIVE_ANON H  LRU_INACTIVE_FILE N  LRU_ACTIVE_FILE T  LRU_UNEVICTABLE Z  NR_LRU_LISTS a  lruvec �  zone_watermarks �  WMARK_MIN �  WMARK_LOW �  WMARK_HIGH �  NR_WMARK �  per_cpu_pages   per_cpu_pageset M  zone_type Y  ZONE_NORMAL _  ZONE_HIGHMEM e  ZONE_MOVABLE k  __MAX_NR_ZONES r  zone_reclaim_stat �  zone �  zoneref �  zonelist �  pglist_data n	  cpumask �	  pcpu_fc �	  PCPU_FC_AUTO �	  PCPU_FC_EMBED �	  PCPU_FC_PAGE �	  PCPU_FC_NR �	  Elf32_Addr �	  Elf32_Half �	  Elf32_Word �	  elf32_sym H
  Elf32_Sym S
  kobj_ns_type _
  KOBJ_NS_TYPE_NONE e
  KOBJ_NS_TYPE_NET k
  KOBJ_NS_TYPES r
  kobj_ns_type_operations   attribute   sysfs_ops �  kref 5  kobject   kobj_type �  kobj_uevent_env /  kset_uevent_ops �  kset �  kernel_param_ops 3  kernel_param �  kparam_string �  kparam_array h  static_key �  tracepoint_func �  tracepoint   kernel_symbol l  mod_arch_specific �  modversion_info �  module_kobject �  module_attribute �  module_state �  MODULE_STATE_LIVE �  MODULE_STATE_COMING �  MODULE_STATE_GOING �  module_ref    module     $                 �       T           \   |   �   �           \   |   �   �               �       T           �   �  �      /home/mohammad/Z1/kernel/wp-mod include/linux /home/mohammad/Z1/kernel/CTSKernel/kernel/arch/arm/include/asm include/asm-generic  wp_mod.c   types.h   spinlock_types.h   spinlock_types.h   atomic-long.h   wait.h   mmzone.h   nodemask.h   cpumask.h   percpu.h   module.h   hwcap.h   printk.h   kernel.h   spinlock.h   bug.h   timer.h   int-ll64.h         M.NKgK-32*N2q�ggJp.      ,/�h� (   "  �      include/asm-generic include/linux /home/mohammad/Z1/kernel/CTSKernel/kernel/arch/arm/include/asm /home/mohammad/Z1/kernel/wp-mod  int-ll64.h   posix_types.h   types.h   bug.h   spinlock_types.h   spinlock_types.h   atomic-long.h   wait.h   mmzone.h   nodemask.h   cpumask.h   percpu.h   elf.h   kobject_ns.h   sysfs.h   kobject.h   kref.h   moduleparam.h   jump_label.h   tracepoint.h   export.h   module.h   module.h   wp_mod.mod.c   hwcap.h   printk.h   kernel.h   spinlock.h   bug.h   timer.h    NR_BOUNCE count NR_ACTIVE_ANON NR_ISOLATED_FILE kswapd_wait msm_krait_need_wfe_fixup __wait_queue_head signed char NR_INACTIVE_FILE ARM_SEC_DEVINIT compact_considered wait_table_hash_nr_entries NR_FILE_PAGES target_arm watermark long long unsigned int __build_bug_on_failed NR_SHMEM pageset next reclaim_stat zonelist_cache sony_ric_enabled N_HIGH_MEMORY _pad2_ N_POSSIBLE /home/mohammad/Z1/kernel/wp-mod/wp_mod.c NR_DIRTIED cpumask recent_scanned wait_table_bits zone_type bits long int NR_PAGETABLE hijack_start LRU_ACTIVE_ANON ARM_SEC_INIT NR_FREE_CMA_PAGES NR_UNEVICTABLE spinlock_t NR_KERNEL_STACK NR_ACTIVE_FILE node_id zone_watermarks present_pages NR_LRU_LISTS high nr_zones NR_MLOCK PCPU_FC_NR vm_stat_diff node_zonelists MIGRATE_ISOLATE compact_order_failed zonelist vm_stat long long int PCPU_FC_AUTO stat_threshold MIGRATE_RECLAIMABLE lruvec node_present_pages code_arm task_list zone_stat_item atomic_long_t WMARK_LOW __mod_version59 kswapd_max_order NR_VMSCAN_IMMEDIATE WMARK_MIN NR_SLAB_UNRECLAIMABLE node_mem_map page name NR_INACTIVE_ANON console_printk NR_ISOLATED_ANON short unsigned int free_list spanned_pages target bool __mod_license60 lowmem_reserve MIGRATE_UNMOVABLE arch_spinlock_t dirty_balance_reserve lru_list ARM_SEC_MAX lists compact_cached_free_pfn MIGRATE_RESERVE arm_write_hook MIGRATE_PCPTYPES compact_cached_migrate_pfn page_group_by_mobility_disabled ZONE_HIGHMEM ZONE_MOVABLE NR_WRITEBACK_TEMP NR_WRITEBACK PCPU_FC_PAGE spinlock free_area zlcache_ptr NR_LRU_BASE zone_pgdat compact_defer_shift per_cpu_pages N_CPU NR_FILE_MAPPED per_cpu_pageset compact_blockskip_flush NR_SLAB_RECLAIMABLE NR_WRITTEN NR_FREE_PAGES batch node_start_pfn _Bool N_ONLINE unsigned char NR_FILE_DIRTY ZONE_NORMAL MIGRATE_TYPES short int _pad1_ counter node_zones cma_alloc rlock nr_free ARM_SEC_DEVEXIT __mod_description58 __MAX_NR_ZONES MIGRATE_CMA NR_VM_ZONE_STAT_ITEMS zoneref wp_mod_init LRU_ACTIVE_FILE long unsigned int char zone_idx atomic_t unsigned int list_head /home/mohammad/Z1/kernel/CTSKernel/kernel zone_reclaim_stat NR_ANON_TRANSPARENT_HUGEPAGES NR_UNSTABLE_NFS percpu_drift_mark __mod_author57 node_spanned_pages zone cpu_online_mask cpu_bit_bitmap WMARK_HIGH recent_rotated NR_ANON_PAGES zone_padding N_NORMAL_MEMORY pages_scanned ARM_SEC_EXIT ARM_SEC_CORE NR_NODE_STATES elf_hwcap raw_spinlock LRU_UNEVICTABLE code n_code classzone_idx GNU C 4.6.x-google 20120106 (prerelease) task_struct pageblock_flags hex_asc timer_stats_active flags LRU_INACTIVE_FILE lru_lock PCPU_FC_EMBED raw_lock MIGRATE_MOVABLE node_states wait_queue_head_t zone_start_pfn NR_VMSCAN_WRITE NR_WMARK prev pglist_data bdata contig_page_data _zonerefs wait_table lock inactive_ratio pcpu_fc bootmem_data LRU_INACTIVE_ANON kswapd source_list long int ARM_SEC_EXIT sock LRU_ACTIVE_ANON NR_SLAB_UNRECLAIMABLE ktype extable NR_BOUNCE percpu N_NORMAL_MEMORY NR_INACTIVE_ANON NR_NODE_STATES console_printk rlock envp_idx vm_stat gpl_future_crcs flags sysfs_ops envp grab_current_ns kobject syms num_trace_events node_id next version KOBJ_NS_TYPE_NET kobj_uevent_env pglist_data module_attribute waiter Elf32_Word prev ARM_SEC_MAX module test elf32_sym zone_type list_head compact_cached_migrate_pfn level kobj_type short int kset_uevent_ops bug_list NR_LRU_BASE bug_table NR_ACTIVE_FILE num_syms state_initialized kernel_param_ops node_start_pfn holders_dir mode funcs wait_table kobj_ns_type_operations gpl_syms ftrace_event_call lruvec KOBJ_NS_TYPES LRU_INACTIVE_ANON drivers_dir __this_module umode_t list zone module_param_attrs core_symtab init_text_size Elf32_Sym NR_ANON_PAGES NR_ANON_TRANSPARENT_HUGEPAGES __module_depends kparam_array LRU_ACTIVE_FILE __kernel_size_t zone_idx num_symtab module_notes_attrs lists __wait_queue_head refcount ZONE_HIGHMEM node_mem_map /home/mohammad/Z1/kernel/wp-mod/wp_mod.mod.c per_cpu_pages inactive_ratio kref long long unsigned int file compact_defer_shift mkobj raw_spinlock N_CPU high attr store LRU_INACTIVE_FILE WMARK_LOW percpu_size refptr default_attrs list_lock init zone_stat_item tracepoints_ptrs value zone_padding namespace zone_pgdat node_states symtab msm_krait_need_wfe_fixup nr_zones sysfs_dirent counter arch string size_t __u16 state_add_uevent_sent func ARM_SEC_DEVINIT NR_DIRTIED _Bool NR_PAGETABLE NR_WMARK num_bugs unwind_table ARM_SEC_INIT compact_order_failed drop_ns free recent_rotated perm __kernel_ssize_t dirty_balance_reserve batch sect_attrs cma_alloc MODULE_STATE_GOING maxlen incs module_core pages_scanned classzone_idx notes_attrs count node_zonelists NR_VMSCAN_IMMEDIATE NR_FILE_MAPPED elem NR_UNEVICTABLE char bug_entry MIGRATE_RECLAIMABLE init_ro_size ZONE_NORMAL module_ref pageset MIGRATE_MOVABLE recent_scanned NR_ACTIVE_ANON buflen exit watermark ssize_t modversion_info N_ONLINE show trace_bprintk_fmt_start compact_considered modinfo_attrs NR_FREE_CMA_PAGES /home/mohammad/Z1/kernel/CTSKernel/kernel lru_lock nr_free strtab task_struct N_HIGH_MEMORY zonelist_cache gpl_crcs ZONE_MOVABLE __build_bug_on_failed long long int core_size mod_arch_specific lock crcs page NR_WRITEBACK bool __mod_vermagic5 module_state num_trace_bprintk_fmt st_value MIGRATE_ISOLATE MIGRATE_RESERVE bootmem_data MIGRATE_CMA _zonerefs child_ns_type core_text_size zone_watermarks uevent node_present_pages PCPU_FC_EMBED PCPU_FC_NR unwind num_kp NR_ISOLATED_FILE uevent_ops initial_ns kparam_string num_exentries kswapd_max_order page_group_by_mobility_disabled NR_LRU_LISTS lru_list bits cpu_online_mask elemsize data args node_zones zoneref contig_page_data Elf32_Half per_cpu_pageset netlink_ns node_spanned_pages kobj_ns_type __u32 reclaim_stat num_gpl_syms kset st_other st_shndx spinlock_t module_kobject free_list enabled parent bdata wait_queue_head_t arch_spinlock_t NR_WRITEBACK_TEMP vm_stat_diff present_pages lowmem_reserve zonelist MODULE_STATE_COMING num_tracepoints filter gpl_future_syms elf_hwcap kswapd NR_UNSTABLE_NFS NR_VM_ZONE_STAT_ITEMS wait_table_bits NR_INACTIVE_FILE hex_asc pcpu_fc core_num_syms NR_VMSCAN_WRITE pageblock_flags spanned_pages cpumask PCPU_FC_PAGE name unsigned int NR_SHMEM static_key GNU C 4.6.x-google 20120106 (prerelease) zone_start_pfn attribute kernel_symbol atomic_t srcversion MIGRATE_TYPES kernel_param long unsigned int compact_blockskip_flush st_info NR_FILE_PAGES percpu_drift_mark N_POSSIBLE bug_addr init_size NR_KERNEL_STACK NR_MLOCK entry core_strtab type KOBJ_NS_TYPE_NONE unsigned char setup spinlock line regfunc state_in_sysfs MIGRATE_PCPTYPES zlcache_ptr trace_events raw_lock ARM_SEC_CORE kobj WMARK_HIGH NR_FREE_PAGES target_list state module_init state_remove_uevent_sent timer_stats_active st_size NR_ISOLATED_ANON _pad1_ Elf32_Addr taints NR_WRITTEN NR_SLAB_RECLAIMABLE tracepoint_func PCPU_FC_AUTO MODULE_STATE_LIVE ____versions signed char LRU_UNEVICTABLE short unsigned int release __MAX_NR_ZONES decs task_list __mod_srcversion31 core_ro_size _pad2_ num_gpl_future_syms compact_cached_free_pfn free_area MIGRATE_UNMOVABLE NR_FILE_DIRTY wait_table_hash_nr_entries module_sect_attrs uevent_suppress zone_reclaim_stat st_name unregfunc atomic_long_t tracepoint kswapd_wait exception_table_entry WMARK_MIN stat_threshold ARM_SEC_DEVEXIT cpu_bit_bitmap  GCC: (GNU) 4.6.x-google 20120106 (prerelease)  GCC: (GNU) 4.6.x-google 20120106 (prerelease) A9   aeabi /   Cortex-A15 
A	*,D .symtab .strtab .shstrtab .rel.text .rel.init.text .ARM.extab .rel.ARM.exidx .ARM.extab.init.text .rel.ARM.exidx.init.text .rodata .modinfo .rodata.str1.1 __versions .data .rel.gnu.linkonce.this_module .note.gnu.build-id .bss .rel.debug_frame .rel.debug_info .debug_abbrev .rel.debug_loc .rel.debug_pubnames .rel.debug_pubtypes .rel.debug_aranges .rel.debug_ranges .rel.debug_line .debug_str .comment .note.GNU-stack .ARM.attributes                                                         4   �                     	           �j  H   *            X             �   T                  %   	           �j  X   *            4                                  C     p�                          ?   	           Pk      *            N             ,                    g     p�       8                   c   	           pk     *   	         |             @                    �             M  �                  �      2          �                 �             �  �                 �             D                     �             D  h                 �   	           �k     *            �             �  $                  �             �                     �              �  p                  �   	           �k  @   *            �              @  |$                 �   	           �k  �  *                         �*  N                              
/  *                   	           x  @  *            %             40  #                 !  	           ��     *            9             W1  �                 5  	           Ȁ     *            M             A  (                  I  	           ؀     *            `             =A  H                  \  	           ��  `   *   !         r             �A  �                 n  	           P�     *   #         ~     0       uE                  �     0       �a  ^                 �             �a                     �    p        �a  :                                b  �                               `�  �  +   6         	              P�  Y                    <  $   <  4   <  X   ;  d   <  p   <  �   <  �     �   	     ;     ;  $   :  ,   =  8   	  <   	  @   	  D   	  H   	  L   	  P         *       7     *     *      *       >     *  �   9            $     (     @     D     \     `                         !     %     )     -     4     K     ]     d     k     r     y     �     �     �     �     �     �     �     �     �     �         #    7    B    N    e    q    �    �    �    �    �    �    �    �    �    �    �                &    ,    2    8    >    D    J    P    W    c    q    �    �    �    �    �    �    �    �    �    �    �    �                             $    *    0    6    <    B    H    N    T    Z    `    f    l    r    y    �    �    �    �    �    �    �    �    �    �    �    �    �    �            "    0    O    i    w    �    �    �    �    �    �    �    �    �    �            "    1    @    O    ^    m    |    �    �    �    �    �    �    �    �    
        *    :    J    Z    j    z    �    �    �    �    �    �    -    ;    J    Z    j    z    �    �    �    �    �    �    �    �            -    C    P    _    o    �    �    �    �    �    �    �    �    �    	    	    	    	    	    %	    2	    =	    H	    S	    _	    j	    n	    z	    ~	    �	    �	    �	    �	    �	    �	    �	    �	    �	    �	    �	    �	    �	    �	    �	    
    
    &
    ?
    J
    N
    R
    g
    s
    �
    �
    �
    �
    �
    �
    �
    �
        "    /    <    I    |    �    �    �    �    �    �    �    �    �    �    �    �    �    �    �    �                !    H    j    q    v    �    �    �    �    �    �    �    �    �    �        ,    8    F    T    b    q    �    �    �    �    �    �    �    �    �    
        '    B    O    U    [    a    g    m    z    �    �    �    �    �    �    �    �    �    �    �    �        &    ,    2    8    >    D    J    P    V    \    b    h    n    t    z    �    �    �    �    �    �    �    �    �    �    �    �    �    �    �    �    �    �    �    �    �                7    C    I    O    U    \    h    v    �    �    �    �    �    �        
                *    9    I    W    f    u    �    �    �    �    �    �    �    �    �            ,    <    L    \    l    |    �    �    �    �    �    �    �    �            ,    <    �    �    �    �    �    �    �    �            ,    <    L    \    s    �    �    �    �    �    �            %    L    X    ^    d    j    q    |    �    �    �    �    �    �    �    �    �    �    
                )    7    E    S    a    �    �    �    �    �    �    �            $    ?    M    ^    o    �    �    �    �    �    �    Q    ]    l    x    �    �    �    �    �    �    �    �    �        p    }    �    �    �    �    �        �    �    �    �            v    �    �    �    �    �            .    :    H    W    c        �    �    �    �    �    �    �    �        
            #    B    N    h    �    �    �    �    �    �    �                ,    ;    J    Y    h    �    �    �    �    �    �    �    �            !    1    A    Q    a    q    �    �    �    �    �    �    �    �              !     1     A     Q     a     q     �     �     �     �     �     �     �     �     !    !    !!    1!    A!    X!    d!    p!    ~!    �!    �!    �!    �!    U"    a"    g"    m"    t"    �"    �"    �"    �"    �"    �"    #    ##    =#    I#  
  c#    o#    �#    �#    �#    �#    �#    �#    �#    �#    	$    <$    O$    ]$    j$    w$  6                             $     +     /     >     B     I     M     \     `     g     k     z     ~     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     
                     �          m                                                        $     0     4     8     <     �    �                                                                                                       	                                                                                                                                                                                                                                !              #              %              &              '              (             ��
                                           �          
              !       T        8                                     	 -            =           M      (     a   @                     p            ��}   Z   #     �   }   	     �   �   M                   �       �                                                               Z          �       h    �              �      0     �       T     �                                        5  8   T     B              wp_mod.c $a sony_ric_enabled $d wp_mod_init __mod_license60 __mod_version59 __mod_description58 __mod_author57 wp_mod.mod.c __mod_srcversion31 __module_depends __mod_vermagic5 ____versions __this_module __aeabi_unwind_cpp_pr0 arm_write_hook init_module kallsyms_lookup_name printk mem_text_write_kernel_word hijack_start __aeabi_unwind_cpp_pr1 